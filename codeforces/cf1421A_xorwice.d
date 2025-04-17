// vicfred
// https://codeforces.com/contest/1421/problem/A
// bit manipulation, math
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

    long a, b;
    while(t--) {
        readf("%s %s\n", &a, &b);

        long bits = 0L;

        for(int i = 0; i < 32; i++)
            if(a&(1<<i) && b&(1<<i))
                bits += (1<<i);

        long ans = (a^bits) + (b^bits);
        ans.writeln;
    }
}

