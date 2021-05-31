// Vicfred
// https://codeforces.com/contest/1494/problem/A
// brute force
import std.array;
import std.stdio;

bool check(string s) {
    int c = 0;
    foreach(p; s) {
        if(p == '(')
            c += 1;
        else
            c -= 1;
        if(c < 0)
            return false;
    }
    return c == 0;
}

string generate(string t) {
    string p = "()";
    for(int i = 0; i < 2; i++) {
        for(int j = 0; j < 2; j++) {
            for(int k = 0; k < 2; k++) {
                string s = t
                    .replace('A', p[i])
                    .replace('B', p[j])
                    .replace('C', p[k]);

                if(check(s)) {
                    return "YES";
                }
            }
        }
    }
    return "NO";
}

void main() {
    long t;
    readf("%s\n", &t);

while(t--) {
    string a;
    readf("%s\n", &a);
    generate(a).writeln;
}
}
