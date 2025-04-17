// vicfred
// https://atcoder.jp/contests/abc175/tasks/abc175_b
// implementation, math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long N = readln.chomp.to!long;
    long[] L = readln.split.map!(to!long).array;

    L.sort;

    long ans = 0;
    for(int i = 0; i < N; ++i) {
        for(int j = i+1; j < N; ++j) {
            for(int k = j+1; k < N; ++k) {
                if(L[i] == L[j] || L[j] == L[k] || L[i] == L[k])
                    continue;
                if(L[i] + L[j] > L[k]) 
                    ans += 1;
            }
        }
    }
    ans.writeln;
}

