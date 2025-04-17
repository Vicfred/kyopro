// vicfred
// https://atcoder.jp/contests/abc185/tasks/abc185_c
// math, binomial coefficients, pascal triangle
import std.stdio;

void main() {
    const int N = 200;
    const int M = 12;
    long[][] pascal = new long[][](N, M);

    for(int i = 0; i < N; ++i)
        pascal[i][0] = 1L;

    for(int i = 0; i < M; ++i)
        pascal[i][i] = 1L;

    for(int n = 0; n < N; ++n) {
        for(int k = 0; k < M; ++k) {
            if(n - 1 >= 0 && k - 1 >= 0) {
                pascal[n][k] = pascal[n - 1][k - 1] + pascal[n - 1][k];
            }
        }
    }

    int L;
    readf("%s\n", &L);

    pascal[L - 1][11].writeln;
}

