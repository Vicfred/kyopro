// vicfred
// https://codeforces.com/contest/1422/problem/B
// greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;

    int n, m;
    while(t--) {
        cin >> n >> m;
        vector<vector<long long>> a(n, vector<long long>(m));

        for(int i = 0; i < n; i++) {
            for(int j = 0; j < m; j++) {
                cin >> a[i][j];
            }
        }

        vector<long long> x(3);
        long long ans = 0LL;
        for(int i = 0; i < n; i++) {
            for(int j = 0; j < m; j++) {
                x[0] = a[i][j];
                x[1] = a[i][m-j-1];
                x[2] = a[n-i-1][j];

                sort(begin(x), end(x));

                ans += abs(a[i][j] - x[1]);
                ans += abs(a[i][m-j-1] - x[1]);
                ans += abs(a[n-i-1][j] - x[1]);

                a[i][j] = x[1];
                a[i][m-j-1] = x[1];
                a[n-i-1][j] = x[1];
            }
        }

        cout << ans << endl;
    }

    return 0;
}

