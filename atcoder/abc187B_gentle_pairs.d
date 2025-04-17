// vicfred
// https://atcoder.jp/contests/abc187/tasks/abc187_b
// implementation, basic math
import std.stdio;

void main() {
    int N;
    readf("%s\n", &N);

    int[] x = new int[N];
    int[] y = new int[N];

    for(int i = 0; i < N; ++i) {
        readf("%s %s\n", &x[i], &y[i]);
    }

    int ans = 0;
    for(int i = 0; i < N; ++i) {
        for(int j = i + 1; j < N; ++j) {
            double m = double(y[j] - y[i])/double(x[j] - x[i]);
            if(m >= -1 && m <= 1)
                ans += 1;
        }
    }

    ans.writeln;
}

