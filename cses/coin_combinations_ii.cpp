// vicfred
// https://cses.fi/problemset/task/1635
// dynamic programming
#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int mod = 1e9 + 7;
    const int maxn = 1e6 + 1;

    int n, x;
    cin >> n >> x;

    vector<vector<int>> dp(n + 1, vector<int>(maxn));
    dp[0][0] = 1;

    vector<int> coins(n);
    for(int &coin: coins) {
        cin >> coin;
    }

    for(int i = 1; i <= n; ++i) {
        for(int j = 0; j <= maxn - 1; ++j) {
            dp[i][j] = dp[i - 1][j];
            int value = j - coins[i - 1];
            if(value >= 0) {
                dp[i][j] += dp[i][value];
            }
            dp[i][j] %= mod;
        }
    }

    cout << dp[n][x] << endl;

    return 0;
}
