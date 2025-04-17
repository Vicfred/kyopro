// vicfred
// http://uva.onlinejudge.org/index.php?option=com_onlinejudge&Itemid=8&category=24&page=show_problem&problem=1437
// dynamic programming
#include <algorithm>
#include <cstdint>
#include <iostream>
#include <cstring>

using namespace std;

const unsigned int MAXN = 15;
int xsize, ysize, n, x[MAXN], y[MAXN], dist[MAXN][MAXN];

int dp[MAXN][1 << MAXN];

int tsp(int pos, int mask) {
    if(mask == (1 << (n + 1)) - 1)
        return dist[pos][0];
    if(dp[pos][mask] != -1)
        return dp[pos][mask];

    int ans = INT32_MAX;
    for(int bit = 0; bit <= n; bit++)
        if(bit != pos and !(mask & (1 << bit)))
            ans = min(ans, dist[pos][bit] + tsp(bit, mask | (1 << bit)));
    return dp[pos][mask] = ans;
}

int main() {
    int t;
    cin >> t;

    while(t--) {
        memset(dp, -1, sizeof dp);
        cin >> xsize >> ysize;
        cin >> x[0] >> y[0];
        cin >> n;
        for(int i = 1; i <= n; i++)
            cin >> x[i] >> y[i];

        for(int i = 0; i <= n; i++)
            for(int j = 0; j <= n; j++)
                dist[i][j] = abs(x[i] - x[j]) + abs(y[i] - y[j]);
        cout << "The shortest path has length " << tsp(0, 1) << endl;
    }
    return 0;
}

