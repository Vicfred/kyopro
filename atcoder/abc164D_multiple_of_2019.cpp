// vicfred
// https://atcoder.jp/contests/abc164/tasks/abc164_d
// implementation
#include <iostream>
#include <string>
#include <vector>


using namespace std;

int main() {
    string s;
    cin >> s;
    int n = s.size();

    const int mod = 2019;

    vector<int> dp(mod);

    dp[0] += 1;

    int rem = 0;
    int base = 1;

    for(int i = 0; i < n; i++) {
        int d = s[n-i-1]-'0';
        rem = (rem + base * d)%mod;
        dp[rem] += 1;
        base *= 10;
        base %= mod;
    }

    long ans = 0LL;
    for(int i = 0; i < mod; i++) {
        ans += (dp[i]*(dp[i]-1))/2;
    }

    cout << ans << endl;

    return 0;
}

