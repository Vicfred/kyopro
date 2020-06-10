// Vicfred
// https://atcoder.jp/contests/abc152/tasks/abc152_b
// simulation, implementation
import std.stdio;

void main() {
    int a, b;
    readf("%s %s\n", &a, &b);

    string u;
    for(int i = 0; i < b; ++i)
        u ~= a+'0';

    string v;
    for(int i = 0; i < a; ++i)
        v ~= b+'0';

    if(u < v)
        u.writeln;
    else
        v.writeln;
}
