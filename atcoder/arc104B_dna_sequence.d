// Vicfred
// https://atcoder.jp/contests/arc104/tasks/arc104_b
// string manipulation
import std.stdio;

void main() {
    int n;
    string s;
    readf("%s %s\n", &n, &s);

    long ans = 0L;
    for(int i = 0; i < n; ++i) {
        int A, T, C, G;
        A = T = C = G = 0;
        for(int j = i; j < n; ++j) {
            if(s[j] == 'A')
                A += 1;
            if(s[j] == 'T')
                T += 1;
            if(s[j] == 'C')
                C += 1;
            if(s[j] == 'G')
                G += 1;
            if(A == T && C == G)
                ans += 1L;
        }
    }

    ans.writeln;
}

