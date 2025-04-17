// vicfred
// https://codeforces.com/contest/1401/problem/C
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

    while(t--) {
        long n = readln.chomp.to!long;
        long[] a = readln.split.map!(to!long).array;
        long[] b;
        b ~= a;

        b.sort;

        long m = b[0];

        bool flag = true;
        for(int i = 0; i < n; i++)
            if(a[i] != b[i] && a[i]%m != 0)
                flag = false;

        if(flag)
            "YES".writeln;
        else
            "NO".writeln;
    }

}

