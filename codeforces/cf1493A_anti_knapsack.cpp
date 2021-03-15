// Vicfred
// https://codeforces.com/contest/1493/problem/A
//
#include <iostream>

using namespace std;

int main() {
    long T;
    cin >> T;

    long k, n;
while(T--) {
    cin >> n >> k;
    cout << n - k + k/2L << endl;
    for(int i = k + 1; i <= n; i++) {
        cout << i << " ";
    }
    for(int i = (k+1)/2; i < k; i++) {
        cout << i << " ";
    }
    cout << endl;
}
    return 0;
}

