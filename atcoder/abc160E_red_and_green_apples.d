// vicfred
// https://atcoder.jp/contests/abc160/tasks/abc160_e
// greedy
import std.algorithm;
import std.math;
import std.array;
import std.conv;
import std.stdio;
import std.container;

void main() {
    long x, y, a, b, c;
    readf("%s %s %s %s %s", &x, &y, &a, &b, &c);
    readln;

    auto p = readln.split.map!(to!long).array;
    auto q = readln.split.map!(to!long).array;
    auto s = readln.split.map!(to!long).array;

    reverse(sort(p));
    reverse(sort(q));
    reverse(sort(s));

    long ans = 0;

    foreach(i; 0..x)
        ans += p[i];

    foreach(i; 0..y)
        ans += q[i];

    x -= 1;
    y -= 1;

    foreach(apple; s) {
        if((x >= 0 && apple > p[x]) && (p[x] < q[y] || y < 0)) {
            ans += apple - p[x];
            x -= 1;
        }
        else if(y >= 0 && apple > q[y]) {
            ans += apple - q[y];
            y -= 1;
        } else {
            break;
        }
    }

    ans.writeln;
}

