// vicfred
// https://codeforces.com/contest/1546/problem/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

struct point {
    int x, y;
}
void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;
    int[] b = readln.split.map!(to!int).array;

    int sum_a = a.sum;
    int sum_b = b.sum;

    if(sum_a != sum_b) {
        "-1".writeln;
        continue;
    }

    point[] idx;

    int i, j;
    while(i < n && j < n) {
        while(a[i] <= b[i]) {
            i += 1;
            if(i >= n || j >= n)
                break;
        }
        while(a[j] >= b[j]) {
            j += 1;
            if(i >= n || j >= n)
                break;
        }
        if(i >= n || j >= n)
            break;
        idx ~= point(i, j);
        a[i] -= 1;
        a[j] += 1;
    }

    if(a == b) {
        idx.length.writeln;
        idx.each!(it => "%s %s".writefln(it.x + 1, it.y + 1));
    } else {
        "-1".writeln;
    }
}
}
