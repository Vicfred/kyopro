// https://codeforces.com/problemset/problem/451/B
// implementation, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    int inversions = 0;
    int[] idx;

    foreach(i; 1..n-1) {
        int last = a[i]-a[i-1];
        int now = a[i+1]-a[i];

        last = last/abs(last);
        now = now/abs(now);

        if(last != now) {
            inversions += 1;
            idx ~= i;
        }
    }


    if(inversions > 2) {
        writeln("no");
        return;
    }

    if(inversions == 0) {
        if(a.isSorted) {
            writeln("yes");
            writeln("1 1");
        }
        else {
            writeln("yes");
            writefln("1 %d", n);
        }
    } else if (inversions == 1) {
        int[] firsttry;
        for(int i = 0; i <= idx[0]; i++) {
            firsttry ~= a[i];
        }
        firsttry.sort;
        for(int i = idx[0]+1; i < n; i++) {
            firsttry ~= a[i];
        }
        if(firsttry.isSorted) {
            writeln("yes");
            writefln("1 %d", idx[0]+1);
            return;
        }
        int[] secondtry;
        for(int i = 0; i < idx[0]; i++) {
            secondtry ~= a[i];
        }
        int[] lastpart;
        for(int i = idx[0]; i < n; i++) {
            lastpart ~= a[i];
        }
        lastpart.sort;
        foreach(item; lastpart) {
            secondtry ~= item;
        }
        if(secondtry.isSorted) {
            writeln("yes");
            writefln("%d %d", idx[0]+1, n);
            return;
        } else {
            writeln("no");
            return;
        }
    } else {
        int idx1 = idx[0];
        int idx2 = idx[1];
        int[] test;
        int[] fin;
        for(int i = 0; i < idx[0]; i++)
            fin ~= a[i];
        for(int i = idx[0]; i <= idx[1]; i++)
            test ~= a[i];
        test.sort;
        foreach(item; test)
            fin ~= item;
        for(int i = idx[1]+1; i < n; i++)
            fin ~= a[i];
        if(fin.isSorted) {
            writeln("yes");
            writefln("%d %d", idx[0]+1, idx[1]+1);
        }
        else
            writeln("no");
    }
}

