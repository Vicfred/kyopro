// Vicfred
// https://codeforces.com/contest/1469/problem/B
//
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    long n = readln.chomp.to!long;
    long[] r = 0~readln.split.map!(to!long).array;
    long m = readln.chomp.to!long;
    long[] b = 0~readln.split.map!(to!long).array;

    int idx1 = 0;
    int idx2 = 0;

    int cum_red = 0;
    int cum_blue = 0;

    long maxima = 0;
    for(int i = 0; i <= n; ++i) {
        cum_red += r[i];
        if(cum_red >= maxima) {
            idx1 = i;
            maxima = cum_red;
        }
    }

    maxima = 0;
    for(int i = 0; i <= m; ++i) {
        cum_blue += b[i];
        if(cum_blue >= maxima) {
            idx2 = i;
            maxima = cum_blue;
        }
    }

    long ans = 0;
    for(int i = 0; i <= idx1; ++i) {
        ans += r[i];
    }

    for(int i = 0; i <= idx2; ++i) {
        ans += b[i];
    }

    ans.writeln;
}
}

