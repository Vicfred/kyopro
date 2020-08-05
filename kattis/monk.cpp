// Vicfred
// https://open.kattis.com/problems/monk
// binary search
#include <iostream>
#include <vector>
#include <utility>
#include <cmath>
#include <iomanip>

using namespace std;

int a, d;
vector<pair<double,double>> ascent;
vector<pair<double,double>> descent;
double dist;

bool monk(double time);

int main() {
    cout << fixed << setprecision(6);
    cin >> a >> d;
    dist = 0.0;

    for(int i = 0; i < a; i++) {
        int h, t;
        cin >> h >> t;
        ascent.push_back(make_pair(h, t));
        dist += h;
    }

    //cout << "distancia total " << dist << endl;

    for(int i = 0; i < d; i++) {
        int h, t;
        cin >> h >> t;
        descent.push_back(make_pair(h, t));
    }

    //cout << "=======" << endl;
    //for(auto item: ascent) {
    //    cout << item.first << " " << item.second << endl;
    //}
    //cout << "=======" << endl;
    //for(auto item: descent) {
    //    cout << item.first << " " << item.second << endl;
    //}
    //cout << "=======" << endl;

    double L, R, mid;
    L = 0.0;
    R = 1000000000.0;
    mid = 0.0;
    for(int i = 0; i < 1000; i++) {
        mid = L + (R-L)/2.0;
        //cout << "~~~~~~~probando " << mid << endl;
        if(monk(mid)) {
            //cout << mid << " es valida" << endl;
            R = mid;
        }
        else {
            //cout << mid << " NO es valida" << endl;
            L = mid;
        }
    }

    cout << mid << endl;

    return 0;
}

bool monk(double time) {
    double monk_up = 0.0;
    double monk_down = 0.0;

    double uptime = time;

    for(int i = 0; i < a; i++) {
        if(uptime <= 0.0) break;
        double D = ascent[i].first;
        double T = ascent[i].second;
        double velocity = D/T;
        //cout << "distancia: " << d << endl;
        //cout << "tiempo: " << d << endl;
        //cout << "velocidad: " << d << endl;
        if(T > uptime) {
            monk_down += velocity*uptime;
            uptime = 0.0;
            break;
        }
        monk_down += D;
        uptime -= T;
    }

    //cout << "subi " << monk_up << endl;

    uptime = time;

    for(int i = 0; i < d; i++) {
        if(uptime <= 0.0) break;
        double D = descent[i].first;
        double T = descent[i].second;
        double velocity = D/T;
        //cout << "distancia: " << d << endl;
        //cout << "tiempo: " << d << endl;
        //cout << "velocidad: " << d << endl;
        if(T > uptime) {
            monk_down += velocity*uptime;
            uptime = 0.0;
            break;
        }
        monk_down += D;
        uptime -= T;
    }

    //cout << "baje " << monk_down << endl;

    double total = monk_up + monk_down;

    //cout << "total " << total << endl;

    if(total >= dist)
        return true;

    return false;
}

