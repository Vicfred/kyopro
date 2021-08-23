// Vicfred
// https://codeforces.com/contest/1539/problem/B
//
import std.stdio;
import std.string;

void main() {
    int n, q;
    readf("%s %s\n", &n, &q);
    string s = readln.strip;

    int[][] index = new int[][](26, n + 1);
    foreach(ch; 0 .. 26) {
        int count = 0;
        foreach(i; 0 .. n) {
            if(s[i] == 'a' + ch) {
                count += 1;
            }
            index[ch][i + 1] = count;
        }
    }

    for(int i = 0; i < q; ++i) {
        int l, r;
        readf("%s %s\n", &l, &r);
        int ans = 0;
        foreach(ch; 0 .. 26) {
            int letter = index[ch][r] - index[ch][l - 1];
            ans += letter * (ch + 1);
        }
        ans.writeln;
    }
}
