// Vicfred
// https://codeforces.com/contest/1398/problem/C
//
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;
    while(t--) {
        long n = readln.chomp.to!long;
        string s = readln.strip;

        long[] a;

        foreach(ch; s)
            a ~= ch - '0';

        long[long] counter;
        counter[0] = 1;

        long cumulative = 0;
        long ans = 0;

        for(int i = 0; i < n; ++i) {
            cumulative += a[i];

            long x = cumulative - i - 1;

            if(counter.get(x, -1) == -1)
                counter[x] = 0;
            counter[x] += 1;

            ans += counter[x] - 1;
        }

        ans.writeln;
    }
}

