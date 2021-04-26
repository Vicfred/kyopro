// Vicfred
// https://codeforces.com/contest/1504/problem/B
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int n;
    readf("%s\n", &n);
    string a, b;
    readf("%s\n", &a);
    readf("%s\n", &b);
    
    a ~= '0';
    b ~= '0';

    int cumulative = 0;
    bool valid = true;
    for(uint i = 0; i < n; ++i) {
        if(a[i] == '0')
            cumulative += 1;
        else
            cumulative -= 1;
        if((a[i] == b[i]) != (a[i+1] == b[i+1]) && cumulative != 0) {
            valid = false;
            break;
        }
    }
    if(valid)
        "YES".writeln;
    else
        "NO".writeln;
}
}

