// Rasec
// https://atcoder.jp/contests/dp/tasks/dp_a
// dynamic programming

#include <bits/stdc++.h>
using namespace std;
#define optimizar_io ios_base::sync_with_stdio(false);cin.tie(0);

typedef long long int ll;
int N;
ll h[100010];

/*int dp(int i) {
	if (i == N - 1) return 0;
	if (i + 2 > N - 1)
		return dp(i + 1) + abs(h[i] - h[i + 1]);
	return min(dp(i + 1) + abs(h[i] - h[i + 1]), dp(i + 2) + abs(h[i] - h[i + 2]));
}*/

int main() {
	optimizar_io
	ll dp[100010];

	cin >> N;
	for (int i = 0; i < N; i++) cin >> h[i];
	dp[0] = 0;
	for (int i = 1; i < N; i++) {
		if (i - 2 >= 0)
			dp[i] = min(dp[i - 1] + abs(h[i] - h[i - 1]), dp[i - 2] + abs(h[i] - h[i - 2]));
		else
			dp[i] = dp[i - 1] + abs(h[i] - h[i - 1]);
	}
	cout << dp[N - 1] << "\n";
	return 0;
}