// unihernandez22 & glum & Vicfred
// https://atcoder.jp/contests/abc168/tasks/abc168_c
// math
#include <ios>
#include <iostream>
#include <cmath>
#include <math.h>
#include <iomanip>

using namespace std;

int main() {
    cout << fixed << showpoint;
    cout << setprecision(23);

    long double a, b, h, m;

    cin >> a >> b >> h >> m;

    long double x = M_PI/6;
    long double y = M_PI/30;
    long double z = x/60;
    long double C = abs(x*h + z*m - y*m);
    /* x = factor para las horas, pues 5*pi/30 es una hora
     * y = factor para los minutos, 2*pi/60 = pi/30
     * */

    cout << sqrt(a*a+b*b-2.0L*a*b*cos(C)) << endl;

    return 0;
}

