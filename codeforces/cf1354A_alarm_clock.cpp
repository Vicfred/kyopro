// vicfred
// https://codeforces.com/contest/1354/problem/A
// math
#include <algorithm>
#include <iostream>
#include <cmath>

using namespace std;

int main() {
    int t;
    cin >> t;

    while(t--) {
        long long a, b, c, d;
        cin >> a >> b >> c >> d;

        long long ans = 0LL;

        ans += b;

        if(a-b > 0LL and (c-d) <= 0LL) {
            cout << -1 << endl;
            continue;
        }

        if(c > d and a > b)
            ans += ceil(((long double)(a-b))/(c-d))*c;

        cout << ans << endl;
    }

    return 0;
}
