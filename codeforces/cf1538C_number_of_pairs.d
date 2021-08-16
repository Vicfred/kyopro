// Vicfred
// https://codeforces.com/contest/1538/problem/C
// data structures, basic math
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n, l, r;
    readf("%s %s %s\n", &n, &l , &r);
    auto a = readln.split.map!(to!long).array;
    auto rbt = new RedBlackTree!(long,"a < b",true);
    long ans = 0;
    for(int i = 0; i < n; i++) {
        long high = rbt.lowerBound(r - a[i] + 1).array.length;
        long low = rbt.lowerBound(l - a[i]).array.length;
        ans += (high - low);
        rbt.insert(a[i]);
    }
    ans.writeln;
}
}
