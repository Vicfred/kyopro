// Vicfred
// https://codeforces.com/problemset/problem/1195/C
// dynamic programming

#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int MAXN = 100005;
    int n;
    cin >> n;

    vector<long long int> a(n);
    vector<long long int> b(n);

    for(int i = 0; i < n; ++i)
        cin >> a[i];
    for(int i = 0; i < n; ++i)
        cin >> b[i];

    vector<vector<long long int>> dp(MAXN,vector<long long int>(5));

    dp[0][1] = a[0];
    dp[0][2] = b[0];

    for(int i = 1; i < n; i++) {
        dp[i][1] = max(dp[i-1][2]+a[i],max(dp[i-1][3]+a[i],a[i]));
        dp[i][3] = max(dp[i-1][1],dp[i-1][2]);
        dp[i][2] = max(dp[i-1][1]+b[i],max(dp[i-1][3]+b[i],b[i]));
    }

    cout << max(dp[n-1][1],max(dp[n-1][2],dp[n-1][3])) << endl;

    return 0;
}

