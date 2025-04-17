// vicfred
// https://atcoder.jp/contests/abc158/tasks/abc158_d
// deque
import std.algorithm;
import std.array;
import std.stdio;
import std.conv;
import std.string;
import std.container;

void main() {
    string s = readln.chomp;
    int q = readln.chomp.to!int;

    int[] t = new int[q];
    int[] f = new int[q];
    char[] c = new char[q];

    foreach(i; 0..q) {
        string[] line = readln.split.map!(to!string).array;
        t[i] = to!int(line[0]);
        if(t[i] == 2) {
            f[i] = to!int(line[1]);
            c[i] = to!char(line[2]);
        }
    }

    auto str = DList!char();
    foreach(ch; s)
        str.insertBack(ch);

    bool reversed = false;

    for(int i = 0; i < q; ++i) {
        if(t[i] == 1) {
            reversed = !reversed;
        } else if(f[i] == 1) {
            if(!reversed)
                str.insertFront(c[i]);
            else
                str.insertBack(c[i]);
        } else {
            if(!reversed)
                str.insertBack(c[i]);
            else
                str.insertFront(c[i]);
        }
    }

    if(reversed)
        str[].reverse;
    foreach(ch; str)
        ch.write;
    writeln;
}

