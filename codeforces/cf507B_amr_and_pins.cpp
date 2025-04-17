// vicfred
// https://codeforces.com/problemset/problem/507/B
// math, greedy

#include <iostream>
#include <cmath>

using namespace std;

long double euclidean(long long int x, long long int y, long long int u, long long int v) {
    return sqrt((x-u)*(x-u) + (y-v)*(y-v));
}

int main() {
    long long int r, x, y, u, v;
    cin >> r >> x >> y >> u >> v;

    long double dist = euclidean(x, y, u, v);

    cout << static_cast<long long int>(ceil((dist)/(2.0*r))) << endl;

    return 0;
}

