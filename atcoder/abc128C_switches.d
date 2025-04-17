// vicfred
// https://atcoder.jp/contests/abc128/tasks/abc128_c
// bitmask, brute force, implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, m;
    readf("%d %d\n", &n, &m);

    int[][] bulbs = new int[][](m+1, n+1);

    foreach(i; 1..m+1)
        bulbs[i] = readln.split.map!(to!int).array[1..$];

    int[] p = 0~readln.split.map!(to!int).array;

    int ans = 0;
    for(int mask = 0; mask <= ((1 << n) - 1); mask++) {
        int[] turned = new int[m+1];
        for(int bit = 0; bit < n; bit++)
            if(mask & (1 << bit))
                for(int i = 1; i <= m; i++)
                    if(bulbs[i].count(bit + 1) > 0)
                        turned[i] += 1;

        int count = 0;
        for(int i = 1; i <= m; i++)
            if(turned[i]%2 == p[i])
                count += 1;

        if(count == m)
            ans += 1;
    }
    
    ans.writeln;
}

