// vicfred
// https://codeforces.com/contest/1469/problem/C
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    int n, k;
    readf("%s %s\n", &n, &k);
    long[] h = readln.split.map!(to!long).array;

    bool possible = true;

    long mn = h[0];
    long mx = h[0];

    for(int i = 1; i < n; i++) {
        mn = max(mn - k + 1, h[i]);
        mx = min(mx + k - 1, h[i] + k - 1);
        if(mn > mx) {
            possible = false;
            break;
        }
    }

    bool found = true;

    if(h[n - 1] < mn || h[n - 1] > mx)
        found = false;

    if(!found)
        possible = false;
    
    if(possible)
        "Yes".writeln;
    else
        "No".writeln;
}
}

