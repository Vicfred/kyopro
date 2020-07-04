// Vicfred
// https://codeforces.com/contest/1371/problem/A
// implementation
#include <iostream>

using namespace std;

int main() {
    int t;
    cin >> t;
    while(t--) {
        int n;
        cin >> n;
        cout << n/2 + n%2 << endl;
    }
    return 0;
}

