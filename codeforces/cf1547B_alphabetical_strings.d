// vicfred
// https://codeforces.com/contest/1547/problem/B
// greedy
import std.algorithm;
import std.stdio;

int find(string s, char c) {
    for(int i = 0; i < s.length; ++i) {
        if(s[i] == c)
            return i;
    }
    return -1;
}

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    string s;
    readf("%s\n", &s);
    int index = find(s, 'a');
    if(index == -1) {
        "NO".writeln;
        continue;
    }
    int R, L;
    L = index;
    R = index;
    bool valid = true;
    for(int i = 1; i < s.length; ++i) {
        char c = cast(char)('a' + i);
        int idx = find(s, c);
        if(idx == -1) {
            valid = false;
            break;
        }
        if(idx != L - 1 && idx != R + 1) {
            valid = false;
            break;
        }
        L = min(L, idx);
        R = max(R, idx);
    }
    if(valid) {
        "YES".writeln;
    } else {
        "NO".writeln;
    }
}
}
