// vicfred
// https://codeforces.com/problemset/problem/1303/B
// math
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int t;
    cin >> t;

    while(t--) {
        long long int n, g, b;
        cin >> n >> g >> b;

        long long int periods = (n+1LL)/2LL;
        long long int days = periods/g*(g+b);

        if(periods%g > 0LL) {
            days += periods%g;
        } else {
            days -= b;
        }

        cout << max(n, days) << endl;
    }

    return 0;
}

