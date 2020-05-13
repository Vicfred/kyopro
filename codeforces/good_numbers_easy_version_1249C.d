// https://codeforces.com/problemset/problem/1249/C1
// math, bitmask
import std.conv;
import std.range;
import std.stdio;
import std.string;

void main() {
    int[] good;
    for(int mask = 1; mask < (1<<10); mask++) {
        int m = 0;
        for(int bit = 0; bit < 10; bit++) {
            if(mask&(1<<bit)) {
                m += 3^^bit;
            }
        }
        good ~= m;
    }
    foreach(line; stdin.byLine.dropOne) {
        int q = line.chomp.to!int;
        foreach(m; good) {
            if(m >= q) {
                m.writeln;
                break;
            }
        }
    }
}

