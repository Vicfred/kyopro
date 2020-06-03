// https://codeforces.com/contest/1104/problem/B
// stack
import std.stdio;
import std.string;
import std.range.primitives;

void main() {
    string s = readln.chomp;
    char[] stack;
    bool first = false;
    foreach(ch; s) {
        if(stack.length > 0 && stack[$-1] == ch) {
            stack.popBack();
            first = !first;
        } else {
            stack ~= ch;
        }
    }
    if(first)
        writeln("Yes");
    else
        writeln("No");
}

