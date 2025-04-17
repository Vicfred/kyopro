// vicfred
// https://codeforces.com/contest/1398/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;
    while(t--) {
        string s = readln.strip;

        int[] moves;
        for(int i = 0; i < s.length; ++i) {
            if(s[i] == '1') {
                int j = i;
                while(j + 1 < s.length && s[j + 1] == '1')
                    ++j;
                moves ~= j - i + 1;
                i = j;
            }
        }

        moves.sort!("a > b");

        int ans = 0;
        for(int i = 0; i < moves.length; i += 2)
            ans += moves[i];
        ans.writeln;
    }
}

