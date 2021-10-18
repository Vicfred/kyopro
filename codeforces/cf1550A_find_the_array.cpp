// Vicfred
// https://codeforces.com/contest/1550/problem/A
// greedy
#include <iostream>

using namespace std;

int main() {
    int t;
    cin >> t;

while(t--) {
    int s;

    cin >> s;

    int ans = 1;

    while(ans * ans < s) {
        ++ans;
    }

    cout << ans << endl;
}
    return 0;
}
