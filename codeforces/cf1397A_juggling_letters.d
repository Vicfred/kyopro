// vicfred
// https://codeforces.com/contest/1397/problem/A
// simulation, math
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

    while(t--) {
        long[char] counter;

        long n = readln.chomp.to!long;
        string[] s;
        foreach(_; 0..n)
            s ~= readln.strip;
        foreach(str; s) {
            foreach(ch; str) {
                if(ch in counter)
                    counter[ch] += 1;
                else
                    counter[ch] = 1;
            }
        }

        string ans = "YES";
        foreach(value; counter.values) {
            if(value%n != 0) {
                ans = "NO";
                break;
            }
        }
        ans.writeln;
    }

}

