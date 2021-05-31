// Vicfred
// https://codeforces.com/contest/1422/problem/A
// math
#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    long t;
    cin >> t;
    
    while(t--) {
        long a, b, c, d;
        cin >> a >> b >> c;

        d = max(a,max(b,c));

        cout << d << endl;
    }

    return 0;
}

