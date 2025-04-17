// vicfred
// https://atcoder.jp/contests/abc047/tasks/arc063_a
// greedy
import std.stdio;
import std.string;

void main() {
    string s = readln.strip;
    long n = s.length;

    long count = 0;
    for(long i = 0; i < s.length-1; i++) {
        if(s[i] != s[i + 1]) count += 1;
    }
    count.writeln;
}
