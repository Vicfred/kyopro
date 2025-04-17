// vicfred
// https://cses.fi/problemset/task/1635
// dynamic programming
#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int mod = 1e9 + 7;
    const int maxn = 1e6 + 1;

    vector<int> dp(maxn, 0);
    dp[0] = 1;

    int n, x;
    cin >> n >> x;

    vector<int> coins(n);
    for(int &coin: coins) {
        cin >> coin;
    }

    for(int i = 1; i <= maxn; ++i) {
        for(int &coin: coins) {
            int value = i - coin;
            if(value >= 0) {
                dp[i] += dp[value];
                dp[i] %= mod;
            }
        }
    }

    cout << dp[x] << endl;

    return 0;
}
