// Vicfred
// https://codeforces.com/contest/1283/problem/B
// math
#include <iostream>
#include <algorithm>

using namespace std;

int main() {
    int t;
    cin >> t;
    while(t--) {
        int n, k;
        cin >> n >> k;
        cout << (n/k)*k + min(n%k,k/2) << endl;
    }
}

