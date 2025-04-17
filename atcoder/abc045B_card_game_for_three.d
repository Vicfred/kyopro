// vicfred
// https://atcoder.jp/contests/abc045/tasks/abc045_b
// simulation
import std.array;
import std.stdio;
import std.string;
import std.range.primitives;

void main() {
    string a = readln.strip;
    string b = readln.strip;
    string c = readln.strip;

    char[] A;
    foreach(ch; a)
        A ~= ch;

    char[] B;
    foreach(ch; b)
        B ~= ch;

    char[] C;
    foreach(ch; c)
        C ~= ch;

    char[][char] deck;
    deck['a'] = A;
    deck['b'] = B;
    deck['c'] = C;

    char current = 'a';
    while(deck[current].length > 0) {
        char temp = deck[current][0];
        deck[current].popFront;
        current = temp;
    }

    if(current == 'a')
        "A".writeln;
    if(current == 'b')
        "B".writeln;
    if(current == 'c')
        "C".writeln;
}

