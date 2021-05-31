// Vicfred
// https://atcoder.jp/contests/abc184/tasks/abc184_d
// dynamic programming, probability, expected value, math
import std.stdio;

void main() {
    int a, b, c;
    const int maxn = 100;

    real[][][] dp = new real[][][](maxn+1, maxn+1, maxn+1);

    readf("%s %s %s\n", &a, &b, &c);

    for(int i = 0; i < maxn+1; i++) {
        for(int j = 0; j < maxn+1; j++) {
            for(int k = 0; k < maxn+1; k++) {
                dp[i][j][k] = 0.0;
            }
        }
    }

    dp[a][b][c] = 1;
    real ans = 0.0;

    for(int i = 0; i < maxn; i++) {
        for(int j = 0; j < maxn; j++) {
            for(int k = 0; k < maxn; k++) {
                if(i + j + k > 0) {
                    if(i > 0)
                        dp[i + 1][j][k] += dp[i][j][k]*i/(i + j + k);
                    if(j > 0)
                        dp[i][j + 1][k] += dp[i][j][k]*j/(i + j + k);
                    if(k > 0)
                        dp[i][j][k + 1] += dp[i][j][k]*k/(i + j + k);
                }
            }
        }
    }

    for(int i = 0; i < maxn; i++) {
        for(int j = 0; j < maxn; j++) {
            ans += dp[100][i][j] * (100 - a + i - b + j - c);
            ans += dp[i][100][j] * (100 - b + i - a + j - c);
            ans += dp[i][j][100] * (100 - c + i - a + j - b);
        }
    }

    writefln("%0.9f", ans);
}

