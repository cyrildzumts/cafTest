#include <iostream>
#include <algorithm>
#include <string>
#include <caf/all.hpp>
#include <caf/io/all.hpp>
#include <tuple>

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


void evaluatorService(event_based_actor *self,  vector<int> coeficients );
void clientService(event_based_actor* self, string username);


/*
 * The server is published at port 4242
 */

int main()
{
    string name;
    string cmd;
    string help = string("To show the list of all users presents in the chat room "
                         "enter : /ls.\n"
                         "To quit the chat enter : /quit .\n"
                         "To send a chat message, your message shoulnt begin with  a\"/\" character ");

    cout << "Demo Chat programme using Actor Model" << endl;
    while(name.empty())
    {
        cerr << "Please choose a username" << endl;
        cin >> name;
    }

    auto clientNode = spawn(clientService, name);

//    try {

//            auto g =  group::get("local", "hawgroup");
//            anon_send(clientNode, JOIN_ATOM::value,clientNode, g);

//          }
//          catch (exception& e) {
//            cerr << "*** exception: group::get() failed; "
//               << to_verbose_string(e) << endl;
//                anon_send(clientNode,LS_ATOM::value);
//          }
    anon_send(clientNode,JOIN_ATOM::value,clientNode);
    cout << help << endl;
    cin.ignore();
    while (getline(cin,cmd))
    {


        if(cmd == "/quit")
        {
            anon_send(clientNode, LEAVE_ATOM::value, "Bye Bye ...");
            break;
            //return 0;
        }
        if(cmd == string("/ls"))
        {
            anon_send(clientNode,LS_ATOM::value);
        }
        else if(cmd.at(0) == '/')
        {
            //cout << "Unknown command" << endl;
            //cout << help << endl;
            anon_send(clientNode, CALC_ATOM::value,cmd);
        }
        else
        {
            anon_send(clientNode,CHAT_ATOM::value, cmd);
        }
    }
    await_all_actors_done();
    shutdown();
}

void evaluatorService(event_based_actor *self,  vector<int> coeficients )
{
    aout(self) << "Distributed Calculator " <<endl;
    self->become (
        [=](CALC_ATOM, const double &x){
            aout(self) << "Calc request  Evaluator received  " <<endl;
            double y = 0.0;
            auto exponent = coeficients.size() ;
            while( exponent >= 1){
                y+= coeficients.at(coeficients.size() - exponent ) * (pow(x,exponent -1));
                exponent--;
            }

            self->send( actor_cast<actor>( self->current_sender()), CALC_ATOM::value, y);
            self->quit();
            return ;
        }

    );
}
void clientService(event_based_actor* self, string username)
{
    aout(self) << "Demo Client started" << endl;

    actor serverNode;
    try
    {
        serverNode = io::remote_actor("localhost", 4242);
    }
    catch(exception& e)
    {
        cout << "Network Error" << endl;
        cout << e.what();
        self->quit();
        exit(-1);
    }

    self->become (keep_behavior,
        [=](CHAT_ATOM ,string& chatMessage){
            self->send(serverNode, CHAT_ATOM::value, username + ": " + chatMessage);

        },

        [=](LS_ATOM){
            aout(self) << "List of all participant : " << endl;
            self->send(serverNode, LS_ATOM::value);
        },
        [=](LEAVE_ATOM, string& goodbyeMessage){
                    self->send(serverNode, LEAVE_ATOM::value, username + ":" + goodbyeMessage);
                    self->quit();
        },
        [=](JOIN_ATOM, const actor& user){

            self->send(serverNode, JOIN_ATOM::value, username,user);

        },
        [=](NOTIFY_ATOM, string& notification)
            {
                aout(self) << notification<< endl;
            },
        [=](CALC_ATOM, string& cmd)
            {
                self->send(serverNode, CALC_ATOM::value, cmd);
                self->become(keep_behavior,
                            [=](CALC_ATOM, double y)
                                {
                                    aout(self) << "  Y = " << y << endl;
                                    self->unbecome();
                                }

                            );
            },
        [=](CALC_ATOM,double &x, int a0 , int a1 , int a2 , int a3 , int a4)
            {
                //aout(self) << " Call from Server received:  " << a0 <<endl;
                auto calc = self->spawn(evaluatorService,vector<int>{a0,a1,a2,a3,a4});
                self->send(calc, CALC_ATOM::value,x);
                self->become(keep_behavior,
                            [=](CALC_ATOM, double y)
                                {
                                    self->send(serverNode, CALC_ATOM::value, y);
                                    self->unbecome();
                                }

                            );
            }

               );

}
