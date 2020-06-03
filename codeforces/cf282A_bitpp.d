// https://codeforces.com/problemset/problem/282/A 
// simulation
import std.algorithm;
import std.stdio;

void main() {
    readln;
    int answer = 0;
    foreach(line; stdin.byLine)
        if(canFind(line,"++"))
            answer++;
        else
            answer--;
    answer.writeln;
}

