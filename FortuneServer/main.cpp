#include <iostream>
#include <chrono>
#include <algorithm>
#include "uglyfortunemessages.h"
#include <caf/all.hpp>
#include <caf/io/all.hpp>


using std::cout;
using std::cerr;
using std::endl;

using namespace caf;
using namespace caf::io;

using tick_atom = atom_constant<atom("tick")>;
using ADD_ATOM = atom_constant <atom("add_story")>;

std::vector<std::string> responses {
    std::string(response1),
    std::string(response2),
    std::string(response3),
    std::string(response4),
    std::string(response5)
};
static size_t _index = 0;

behavior connection_worker(broker* self, connection_handle hdl) {
  self->configure_read(hdl, receive_policy::at_most(4096));
  std::random_shuffle(responses.begin(),responses.end());
  return {
    [=](const new_data_msg& msg) {
      // shuffle can be done better with std::random_device
          if(_index == responses.size() )
          {
              std::random_shuffle(responses.begin(),responses.end());
              _index = 0;
          }


      std::string response = responses.at(_index);
      cout<< "String Content : " << response <<endl;
      cout<< "String Size : "<< response.size() << endl;
      cout<< "Current Index : "<< _index<< endl;
      _index++;
      self->write(msg.handle, response.size(), response.c_str());
      self->quit();
    },
    [=](const connection_closed_msg&) {
      self->quit();
    }
  };
}

behavior server(broker* self) {
  auto counter = std::make_shared<int>(0);

  self->delayed_send(self, std::chrono::seconds(1), tick_atom::value);
  return {
    [=](const new_connection_msg& ncm) {
      auto worker = self->fork(connection_worker, ncm.handle);
      self->monitor(worker);
      self->link_to(worker);
    },
    [=](const down_msg&) {
      ++*counter;
    },
    [=](tick_atom) {
      aout(self) << "Finished " << *counter << " requests per second." << endl;
      *counter = 0;
      self->delayed_send(self, std::chrono::seconds(1), tick_atom::value);
    },
      [=](ADD_ATOM,std::string &story){
            aout(self) << "New Story received : "<< story << endl;
            responses.push_back(story);
      },

    others >> [=] {
      aout(self) << "unexpected: " << to_string(self->current_message()) << endl;
    }
  };
}
// Client Code to send a new story to the server Node
//void remote_add_story(broker* self)
//{
//    actor serverNode ;
//    try
//    {
//        serverNode = io::remote_actor("localhost",4242);
//    }
//    catch(network_error &e)
//    {
//        std::cerr << e.what();
//        exit(-1);
//    }
//     self->become (
//                 [=](ADD_ATOM, std::string &story){
//                        anon_send(serverNode, ADD_ATOM::value, story);
//                        },
//                 [=](const down_msg&) {
//                   aout(self) << "StoryNode has quitted" << endl;
//                   self->quit(),
//                 }
//                 );
//}

optional<uint16_t> as_u16(const std::string& str) {
  return static_cast<uint16_t>(stoul(str));
}

int main(int argc, const char** argv) {
  uint16_t port = 0;
  auto res = message_builder(argv + 1, argv + argc).extract_opts({
    {"port,p", "set port", port},
  });
  if (! res.error.empty()) {
    cerr << res.error << endl;
    return 1;
  }
  if (res.opts.count("help") > 0) {
    cout << res.helptext << endl;
    return 0;
  }
  if (! res.remainder.empty()) {
    // not all CLI arguments could be consumed
    cerr << "*** too many arguments" << endl << res.helptext << endl;
    return 1;
  }
  if (res.opts.count("port") == 0) {
    cerr << "*** no port given" << endl << res.helptext << endl;
    return 1;
  }
  cout << "*** run in server mode listen on: " << port << endl;
  cout << "*** to quit the program, simply press <enter>" << endl;
  auto serverNode = spawn_io_server(server, port);
  // wait for any input
  std::string story;
  std::getline(std::cin, story);

  // kill server
  anon_send_exit(serverNode, exit_reason::user_shutdown);
  await_all_actors_done();
  shutdown();
}
