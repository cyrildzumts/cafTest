/*
 *
 *
 * Diese RendezVous Aufgabentest ist nicht fertig.
 * Da ich auch viel arbeiten muss und das Semester
 * angefangen hat, ich würde noch ca eine Woche um
 * den Code zu implementieren.
 * Hier ist meine Loesung :
 * Jeder Manager hat ein Pool von N workers ( hier nur 1)
 * Der Manager kommuniziert mit Kunden durch einen Group
 * z.b fuer eine local Group : group::get("local", "rendezvous")
 * aber der Manager komuniziert mit seinen Workers durch
 * sein Pool.
 * was mir noch fehlt ist wie jeder Manager die Adresse vom Sender
 * bekommt, ob auch fuer die Gruppe ein self->current_sender()
 * ausreicht oder nicht.
 *
 */



#include <iostream>
#include <chrono>
#include<algorithm>
#include <caf/all.hpp>
#include <caf/io/all.hpp>
using namespace caf;
using namespace std;

using CALC_ATOM = caf::atom_constant<caf::atom("calc")>;
using STOP_ATOM = caf::atom_constant<caf::atom("stop")>;
using REQUEST_ATOM = caf::atom_constant<caf::atom("request")>;
using IDLE_ATOM = caf::atom_constant<caf::atom("idle")>;
using BUSY_ATOM = caf::atom_constant<caf::atom("busy")>;

std::string groupID {"rendezvous"};
std::string groupModule{"local"};



void simpleFunctionEvaluator(caf::event_based_actor *self);
void manager(caf::event_based_actor* self);
actor createWorker(const actor &managerNode);

int main(int argc, char** argv) {
  uint16_t port = 0;
  auto res = message_builder(argv + 1, argv + argc).extract_opts({
    {"port,p", "set port", port}
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
  if (res.opts.count("port") == 0 || port <= 1024) {
    cerr << "*** no valid port (>1024) given" << endl << res.helptext << endl;
    return 1;
  }

  try {
    // try to bind the group server to the given port,
    // this allows other nodes to access groups of this server via
    // group::get("remote", "<group>@<host>:<port>");
    // note: it is not needed to explicitly create a <group> on the server,
    //     as groups are created on-the-fly on first usage
    io::publish_local_groups(port);

  }

  catch (bind_failure& e) {
    // thrown if <port> is already in use
    cerr << "*** bind_failure: " << e.what() << endl;
    return 2;
  }
  catch (network_error& e) {
    // thrown on errors in the socket API
    cerr << "*** network error: " << e.what() << endl;
    return 2;
  }

  cout << "type 'quit' to shutdown the server" << endl;
  string line;
  while (getline(cin, line)) {
    if (line == "quit") {
      return 0;
    }
    else {
      cerr << "illegal command" << endl;
    }
  }
  shutdown();
}

void simpleFunctionEvaluator(caf::event_based_actor *self)
{
    std::vector<int>coeficients{1, 1, 1, 1, 1};
    self->become (
        [=](CALC_ATOM, const double &x){
            double y = 0.0;
            auto exponent = coeficients.size() ;
            while( exponent >= 1){
                y+= coeficients.at(coeficients.size() - exponent ) * (pow(x,exponent -1));
                exponent--;
            }

            self->send( actor_cast<actor>(self->current_sender()), x,y);
        },
        [=](STOP_ATOM){
            aout(self) << "Quitting " <<endl;
            self->quit();
        }
    );
}

void manager(caf::event_based_actor *self)
{
    //Suscribe to group
    // create a Pool with N worker
    // receive request from clients

}

