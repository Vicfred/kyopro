// vicfred
// https://codeforces.com/contest/1497/problem/B
// modular arithmetic, math, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    uint n, m;
    readf("%s %s\n", &n, &m);
    long[] a = readln.split.map!(to!long).map!(x => x % m).array;

    long[] counter = new long[m];
    foreach(number; a) {
        counter[cast(uint)number] += 1L;
    }

    //a.writeln;
    //counter.writeln;

    long ans = 0L;
    if(counter[0L] > 0L)
        ans += 1L;

    for(uint i = 1L; i*2 <= m; i++) {
        if(counter[i] == 0L && counter[m - i] == 0L)
            continue;
        ans += 1L;
        if(2*i == m)
            continue;
        //writefln("ans: %s", ans);

        long take = min(counter[i], counter[m - i]);
        //writefln("counter[%s] = %s", i, counter[i]);
        //writefln("counter[%s] = %s", m - i, counter[m - i]);

        counter[i] -= take;
        counter[m - i] -= take;

        if(counter[i] > 0L)
            counter[i] -= 1L;
        if(counter[m - i] > 0L)
            counter[m - i] -= 1L;
        ans += counter[i] + counter[m - i];
    }
    ans.writeln;
}
}
