// vicfred
// https://atcoder.jp/contests/abc050/tasks/arc066_a
// math, combinatorics
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const int mod = 10^^9+7;
    const long n = readln.chomp.to!long;
    long[] as = readln.split.map!(to!long).array;
    as.sort;

    if(n%2 == 1) as = as[1..n];

    long[long] count;
    foreach(item; as) {
        if(item in count) {
            count[item] += 1;
        } else {
            count[item] = 1;
        }
    }

    foreach(item; count.values()) {
        if(item != 2) {
            0.writeln;
            return;
        }
    }

    long ans = 1;
    for(int i = 0; i < n/2; i++) {
        ans *= 2;
        ans %= mod;
    }
    ans.writeln;
}


