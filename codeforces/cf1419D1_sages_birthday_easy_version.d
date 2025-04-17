// vicfred
// https://codeforces.com/contest/1419/problem/D1
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.container;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;

    long[] a = readln.split.map!(to!long).array;
    a.sort;

    auto dlist = DList!long(a);

    long[] solution;

    for(int i = 0; i < n; i++) {
        if(i % 2 == 0) {
            solution ~= dlist.back;
            dlist.removeBack;
        } else {
            solution ~= dlist.front;
            dlist.removeFront;
        }
    }

    int ans = 0;
    for(int i = 1; i + 1 < n; i++) {
        if(solution[i] < solution[i - 1] &&
           solution[i] < solution[i + 1])
            ans += 1;
    }

    ans.writeln;
    foreach(item; solution)
        writef("%s ", item);
    "".writeln;
}
