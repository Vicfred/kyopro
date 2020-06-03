// https://codeforces.com/problemset/problem/467/B
// bit manipulation
import std.stdio;
import std.conv;
import std.array;
import std.algorithm;

void main() {
    int[] words = readln.split.map!(x => x.to!int).array;
    int n = words[0];
    int m = words[1];
    int k = words[2];

    int[] armies;

    foreach(x; stdin.byLine)
        armies ~= x.to!int;

    int answer = 0;

    foreach(army; armies) {
        int xor = army^armies[m];
        int differ = 0;
        for(int bit = 0; bit < n; bit++)
            if((xor&(1<<bit)) > 0)
                differ += 1;
        if(differ <= k)
            answer += 1;
    }

    answer -= 1;
    answer.writeln;
}

