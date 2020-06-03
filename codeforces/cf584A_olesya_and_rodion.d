// unihernandez22
// https://codeforces.com/contest/584/problem/A
// implementation
import std.stdio: writeln, readln;
import std.array: array, split;
import std.algorithm: map;
import std.conv: to;
import std.string: chomp;
import std.bigint;
 
void main() {
    int[] input = readln.chomp.split(" ").map!(to!int).array;
    int n = input[0];
    int t = input[1];
    for (BigInt i = (BigInt(10)^^(n-1)); i < (BigInt(10)^^n); i++) {
        if (i%t == 0) {
            i.writeln;
            return;
        }
    }
    writeln("-1");
}

