// Martin
// https://codeforces.com/contest/1311/problem/A
// greedy, math

#include<iostream>

using namespace std;

int main() {
    int t, a, b;
    cin >> t;

    while (t--) {
        cin >> a >> b;
        int diff = a - b;
        bool diff_odd = diff & 1;
        if (diff < 0) {
            if (diff_odd)  // diff is odd, just: `a + diff`
                cout << 1;
            else  // means we need two operations: `a + (diff - 1)`, then + 1
                cout << 2;
        } else if (diff > 0) { // we need to decrease `a`
            if (diff_odd)  // diff is odd, so: `a - (diff + 1), then + 1
                cout << 2;
            else
                cout << 1;  // diff is even, just: `a - diff`
        } else {
            cout << 0;
        }

        cout << endl;
    }

    return 0;
}
