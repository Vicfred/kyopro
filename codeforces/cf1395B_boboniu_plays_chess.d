// Vicfred
// https://codeforces.com/contest/1395/problem/B
// implementation
import std.stdio;

void main() {
    int n, m, sx, sy;
    readf("%s %s %s %s", &n, &m, &sx, &sy);

    writefln("%s %s", sx, sy);

    for(int i = 1; i <= n; i++)
        if(i != sx)
            writefln("%s %s", i, sy);

    for(int i =1; i <= m; i++) {
        if(i == sy)
            continue;
        int direction = i&1;
        if(i > sy)
            direction ^= 1;
        if(direction == 1)
            for(int j = n; j > 0; j--)
                writefln("%s %s", j, i);
        else
            for(int j = 1; j <= n; j++)
                writefln("%s %s", j, i);
    }
}

