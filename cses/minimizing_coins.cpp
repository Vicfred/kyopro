// vicfred
// https://cses.fi/problemset/task/1634
// dynamic programming
#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int maxn = 1e6 + 1;
    const int INF = 1<<30;
    vector<int> dp(maxn, INF);

    int n, x;
    cin >> n >> x;

    dp[0] = 0;

    vector<int> coins(n);
    for(int &coin: coins) {
        cin >> coin;
        dp[coin] = 1;
    }

    for(int i = 1; i <= maxn - 1; ++i) {
        for(int &coin: coins) {
            if(i - coin >= 0) {
                dp[i] = min(dp[i], dp[i - coin] + 1);
            }
        }
    }

    if(dp[x] == INF)
        cout << -1 << endl;
    else
        cout << dp[x] << endl;

    return 0;
}

