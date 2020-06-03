// https://codeforces.com/problemset/problem/115/A
// graph, greedy
import std.algorithm;
import std.stdio;
import std.conv;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    int[] graph = new int[n+1];

    foreach(i; 1..n+1)
        graph[i] = readln.chomp.to!int;

    int[] depths = new int[n+1];

    foreach(i; 1..n+1) {
        int parent = graph[i];
        int depth = 1;

        if(parent != -1 && depths[parent] != 0) {
            depths[i] = depths[parent]+1;
            continue;
        }

        while(parent != -1) {
            parent = graph[parent];
            depth += 1;
        }

        depths[i] = depth;
    }

    depths.maxElement.writeln;
}

