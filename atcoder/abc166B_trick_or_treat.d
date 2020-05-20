// Vicfred
// https://atcoder.jp/contests/abc166/tasks/abc166_b
// implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, k;
    readf("%s %s\n", &n, &k);

    int[] snukes = new int[n+1];

    foreach(_; 0..k) {
        int t = readln.chomp.to!int;
        int[] a = readln.split.map!(to!int).array;

        foreach(item; a) {
            snukes[item] = 1;
        }
    }

    long answer = count!("a == 0")(snukes);
    answer -= 1;
    answer.writeln;
}
