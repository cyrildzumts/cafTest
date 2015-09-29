#include <iostream>
#include <caf/all.hpp>
#include <vector>
#include <cmath>
#include <tuple>
#include <memory>
using namespace std;
using namespace caf;
using CALC_ATOM = atom_constant<atom("calc")>;
using STOP_ATOM = atom_constant<atom("stop")>;

void simpleFunctionEvaluator(event_based_actor *self,  vector<int> coeficients )
{
    self->become (
        [self,coeficients](CALC_ATOM, const double &x){
            double y = 0.0;
            auto exponent = coeficients.size() ;
            while( exponent >= 1){
                y+= coeficients.at(coeficients.size() - exponent ) * (pow(x,exponent -1));
                exponent--;
                //aout(self) << "Temp Y : " << y << endl;

            }

            self->send( actor_cast<actor>( self->current_sender()), x,y);
        },
        [=](STOP_ATOM){
            aout(self) << "Quitting " <<endl;
            self->quit();
        }
    );
}
void sendDemo(event_based_actor *self,const actor& evaluatorNode)
{
    cout << " Enter the value of X : " ;
    double x = 0.0;
    x= 0.0;
    cin >> x;
    aout(self) << endl;
    self->send(evaluatorNode, CALC_ATOM::value, x );
    self->become(
                [=](double &X, double &Y)
                {
                            cout << "Results : "<< endl;
                            cout << "X : " << X<< endl;
                            cout << "Y : " << Y << endl;
                            //cin >> ended;
                            double x = 0.0;
                            cout << " Enter the value of X : " ;
                            cin >> x;
                            cout << endl;
                            self->send(evaluatorNode, CALC_ATOM::value, x );
                }
    );
}


int main() {
    // read the equation's coeficients A0---A4
    vector<int> coeficients;
    int coef = 0;
    cout << " Simple Function Evaluator" << endl;
    cout << "----------------------------------------" << endl;
    cout << "----------------------------------------" << endl;
    cout << "This function evaluate the equation of \nthe"
            " form : A0X^4 + A1X^3 + A2X^2 + A3X^1 + A4" << endl;
    cout << "Enter the coeficient of the equation :" << endl;

    for(int i = 0; i < 5; i++){
        cout << "A" << i << " =" ;
        cin >> coef;
        coeficients.push_back(coef);
    }
    auto evaluatorNode = spawn(simpleFunctionEvaluator,coeficients);
    spawn(sendDemo,evaluatorNode);


    await_all_actors_done();
    shutdown();

}
