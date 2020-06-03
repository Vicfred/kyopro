// https://codeforces.com/problemset/problem/456/A
// greedy, sorting
import std.stdio;
import std.conv;
import std.string;
import std.algorithm;

void main() {
    int n = readln.chomp.to!int;
    int[][] laptops;

    int a, b;
    foreach(idx; 0..n) {
        int[] laptop;
        readf("%d %d\n", &a, &b);
        laptop ~= [a,b];
        laptops ~= laptop;
    }

    bool happy = false;
    //laptops.sort();

    for(int i = 0; i < n; i++)
        if(laptops[i][0] != laptops[i][1])
            happy = true;

    /* brute force
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            if(laptops[i][0] < laptops[j][0] &&
                laptops[i][1] > laptops[j][1])
                happy = true;
        }
    }
   */
    
    if(happy)
        writeln("Happy Alex");
    else
        writeln("Poor Alex");
}

