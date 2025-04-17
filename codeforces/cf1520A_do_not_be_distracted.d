// vicfred
// https://codeforces.com/contest/1520/problem/A
// implementation, greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int n;
    readf("%s\n", &n);
    string s;
    readf("%s\n", &s);
    char[] u;
    char last = 'a';
    foreach(ch; s) {
        if(ch != last) {
            last = ch;
            u ~= ch;
        }
    }
    bool suspicious = false;
    int[] seen = new int[27];
    foreach(ch; u) {
        if(seen[ch - 65] == 1) {
            suspicious = true;
            break;
        }
        seen[ch - 65] = 1;
    }
    if(suspicious)
        "NO".writeln;
    else
        "YES".writeln;
}
}
