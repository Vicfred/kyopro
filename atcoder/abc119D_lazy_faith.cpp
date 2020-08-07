// Vicfred
// https://atcoder.jp/contests/abc119/tasks/abc119_d
// binary search
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int a, b, q;
    cin >> a >> b >> q;

    vector<long> s(a), t(b);

    for(int i = 0; i < a; ++i)
        cin >> s[i];

    for(int i = 0; i < b; ++i)
        cin >> t[i];

    for(int i = 0; i < q; ++i) {
        long x;
        cin >> x;

        long shrine = lower_bound(s.begin(), s.end(), x) - s.begin();
        long temple = lower_bound(t.begin(), t.end(), x) - t.begin();

        long ans = 1L << 60;
        for(int j = 0; j <= 1; ++j) {
            for(int k = 0; k <= 1; ++k) {
                int idx1 = shrine - j;
                int idx2 = temple - k;
                if(idx1 < 0 or idx2 < 0 or idx1 > a or idx2 > b) continue;
                ans = min(ans, abs(x - s[idx1]) + abs(s[idx1] - t[idx2]));
                ans = min(ans, abs(x - t[idx2]) + abs(s[idx1] - t[idx2]));
            }
        }
        cout << ans << endl;
    }

    return 0;
}

