#include <iostream>
#include <algorithm>
#include <string>
#include <sstream>
#include <cstdlib>
#include <caf/all.hpp>
#include <caf/io/all.hpp>
#include <vector>
#include <map>
#include <cmath>
#include <tuple>
#include <memory>

using namespace std;
using namespace caf;

// ATOMS DEFINITIONS
using JOIN_ATOM = atom_constant<atom("join")>;
using CHAT_ATOM = atom_constant<atom("chat")>;
using LEAVE_ATOM = atom_constant<atom("leave")>;
using LS_ATOM = atom_constant<atom("ls")>;
using DOWN_ATOM = atom_constant<atom("down")>;
using NOTIFY_ATOM = atom_constant<atom("notify")>;
using CALC_ATOM = atom_constant<atom("calc")>;

void server(event_based_actor* self)
{
    aout(self) << "Demo Server started" << endl;
    //std::string group_module = string("local");
    //std::string group_id = string("hawgroup");
    std::shared_ptr< map<const string, actor> > usermap ( new map< const string, actor>());
    //auto chatList = group::get(group_module, group_id);
    auto find_user = [](string& username, std::shared_ptr< map<const string, actor> > userlist)
    {
        return userlist->find(username);
    };

    self->become
    (
              [=](CHAT_ATOM,const string& chatMessage){
                 // send the message to everyone who has joined the group
                    aout(self) << "Chat message received " << endl;
                    //aout(self) << chatMessage<<  endl;
                    for(auto entry : *usermap)
                    {
                        if(entry.second.address() != self->current_sender())
                        {
                            //self->forward_to(entry.second);
                            self->send(entry.second, NOTIFY_ATOM::value, chatMessage);
                        }
                    }

            },
              [=](JOIN_ATOM, string& username,  actor& user)  {
                //  A user has joined the group. Just add him to the
                // list of participants.
                aout(self) << username +  " has joined the room " << endl;
                usermap->insert({string(username),user});
                self->monitor(user);
                for(auto receiver : *usermap)
                {

                    if(receiver.second.address() != user.address())
                    {
                        self->send(receiver.second, NOTIFY_ATOM::value, username + " has joined the room");
                    }
                }

            },
              [=](LEAVE_ATOM, const string& goodbyeMessage){
               // A user has left the group, he must be removed
               // from the list of participant to the chat.
                actor user = actor_cast<actor>(self->current_sender());
                auto pos = goodbyeMessage.find(':');

                string username = goodbyeMessage.substr(pos);
                for(map<string, actor>::iterator mapIt = usermap->begin(); mapIt != usermap->end(); mapIt++)
                {
                   if((*mapIt).second.address() == user.address() )
                   {
                       usermap->erase(mapIt);
                   }
                   else
                   {
                        self->send((*mapIt).second, NOTIFY_ATOM::value, username +
                                   " has left the room");
                   }

                }
            },/*

               [&](const group_down_msg& downMessage){
                //  Just remove the sender from the list
                // of participants.

                self->send(chatList, downMessage);

            },*/
               [=](LS_ATOM){
                // Just send the list of username present in the group
                // without asking to much question ...
                aout(self) << "A user has asked for the list all participants ..." << endl;
                actor user = actor_cast<actor>(self->current_sender());
                for(auto entry : *usermap)
                {
                    self->send(user,NOTIFY_ATOM::value, entry.first);
                }
            },
            [=](CALC_ATOM, string& cmd)
                {
                    aout(self) << "A user want to use the calculator" << endl;
                    istringstream iss(cmd);
                    vector<string> cmd_splited;
                    string word;
                    string username;
                    double x;
                    actor receiverNode;
                    vector<int> coefs;
                    while (iss)
                    {
                       iss >> word;
                       cmd_splited.push_back(word);
                    }
                    x = stod(cmd_splited.at(1));
                    username = cmd_splited.at(3);
                    aout(self) << "Server Calc: Username : " << username << endl;
                    aout(self) << "Server Calc: X " << x << endl;


                    actor senderNode = actor_cast<actor>(self->current_sender());
                    auto userEntry = find_user(username,usermap);
                    if(userEntry != usermap->end())
                    {
                        receiverNode = userEntry->second;
                    }
                    else
                    {
                        self->send(senderNode, NOTIFY_ATOM::value, "Could not find " + username);
                        return;
                    }
                    aout(self) << "Server Calc: receiver name : " <<  userEntry->first << endl;
                    for( auto it = cmd_splited.begin()+5; it != cmd_splited.end(); it++)
                    {
                        coefs.push_back(stoi(*it));
                    }
                    self->send(receiverNode,CALC_ATOM::value, x, coefs.at(0) , coefs.at(1) , coefs.at(2) , coefs.at(3) , coefs.at(4));
                    self->become
                    (keep_behavior,
                                [=](CALC_ATOM, double y)
                                    {
                                        self->send(senderNode, CALC_ATOM::value, y);
                                        self->unbecome();

                                    }
                     );

                }

              );
}

int main(int argc, char **argv)
{
    uint16_t port = 0;
    auto cliParamater = message_builder( argv +1, argv + argc).extract_opts(
    {
        {"port,p","set port", port}
     }
     );
    if(!cliParamater.error.empty())
    {
        cerr << cliParamater.error << endl;
        return -1;
    }

    if(cliParamater.opts.count("help") > 0)
    {
        cout << cliParamater.helptext << endl;
        return 0;
    }
    if(!cliParamater.remainder.empty())
    {
        cerr << "Bad arguments" <<endl;
        cerr << cliParamater.helptext << endl;
        return -1;
    }

        if(cliParamater.opts.count("port") == 0 || port <= 1024)
    {
        cerr << "chose a port > 1024" << endl;
        return -1;
    }

    auto serviceNode = spawn(server);
    try
    {
         io::publish(serviceNode, port);
    }

    catch(bind_failure &error)
    {
        cerr << "Bind failure : " << error.what() << endl;
        return -1;
    }
    catch(network_error &error)
    {
        cerr << "A network error has happened  : " << error.what()<< endl;
        return -1;
    }
    cout << "type 'quit' to shutdown the server" << endl;
      string line;
      while (getline(cin, line)) {
        if (line == "quit") {
          io::unpublish(serviceNode, port);
          return 0;
        }
        else {
          cerr << "invalid command" << endl;
        }
      }
   shutdown();
}

