// vicfred
// https://codeforces.com/contest/1430/problem/A
// brute force
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

    int n;
    while(t--) {
        readf("%s\n", &n);
        bool found = false;
        for(int x = 0; 3*x <= n; x += 1) {
            if(found)
                break;
            for(int y = 0; 5*y <= n; y += 1) {
                int z = (n - 3*x - 5*y)/7;
                if(z >= 0 && (3*x + 5*y + 7*z == n)) {
                    writefln("%s %s %s", x, y, z);
                    found = true;
                    break;
                }
            }
        }
        if(!found)
            "-1".writeln;
    }
}

