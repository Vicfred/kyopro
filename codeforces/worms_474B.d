// https://codeforces.com/problemset/problem/474/B
// binary search
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(x => x.to!int).array;
    int m = readln.chomp.to!int;
    int[] q = readln.split.map!(x => x.to!int).array;

    int[] worms;
    worms ~= a[0];

    // cumulative sum
    for(int i = 1; i < n; i++)
        worms ~= worms[i-1] + a[i];


    foreach(query; q) {
        int right = n-1;
        int left = 0;
        int middle;

        // binary search
        while(left <= right) {
            middle = (right+left)/2;
            if(worms[middle] >= query) {
                right = middle-1;
            } else {
                left = middle+1;
            }
        }

        left++;
        left.writeln;
    }
}

