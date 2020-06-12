// Vicfred
// https://atcoder.jp/contests/abc155/tasks/abc155_c
// implementation
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    int[string] votes;

    foreach(_; 0..n) {
        string s = readln.chomp;
        votes[s] = votes.get(s,0)+1;
    }

    int maxima = 0;
    foreach(item; votes.values()) {
        maxima = max(maxima, item);
    }

    string[] ans;
    foreach(item; votes.keys()) {
        if(votes[item] == maxima)
            ans ~= item;
    }

    ans.sort;

    foreach(item; ans)
        item.writeln;
}

