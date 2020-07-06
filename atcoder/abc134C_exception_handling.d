// Vicfred
// https://atcoder.jp/contests/abc134/tasks/abc134_c
// greedy
import std.algorithm;
import std.stdio;
import std.conv;
import std.string;

void main() {
    const long n =  readln.chomp.to!long;
    long[] as = new long[n];
    foreach(i; 0..n) {
        as[i] = readln.chomp.to!long;
    }

    const long maxima = as.maxCount[0];
    const long count = as.maxCount[1];

    long second = -1;
    for(long i = 0; i < n; i++) {
        if(as[i] > second && as[i] != maxima) {
            second = as[i];
        }
    }

    foreach(item; as) {
        if(item == maxima && count == 1) {
            second.writeln;
            continue;
        }
        maxima.writeln;
    }
}
