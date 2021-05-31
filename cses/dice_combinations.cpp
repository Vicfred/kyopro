// Vicfred
// https://cses.fi/problemset/task/1633
// dynamic programming
#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int mod = 1e9 + 7;
    const int maxn = 1e6 + 1;

    vector<int> dp(maxn, 0);
    dp[0] = 1;

    for(int i = 1; i <= maxn - 1; ++i) {
        for(int dice = 1; dice <= 6; ++dice) {
            if(i - dice >= 0) {
                dp[i] += dp[i - dice];
                dp[i] %= mod;
            }
        }
    }

    int n;
    cin >> n;

    cout << dp[n] << endl;

    return 0;
}

