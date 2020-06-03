// https://codeforces.com/problemset/problem/1228/B
// math
import std.algorithm;
import std.array;
import std.bigint;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int mod = 10^^9+7;

    int h, w;
    readf("%s %s\n", &h, &w);

    int[] r = readln.split.map!(to!int).array;
    int[] c = readln.split.map!(to!int).array;

    int[][] matrix;

    foreach(_; 0..h) {
        int[] column = new int[w];
        matrix ~= column;
    }

    for(int i = 0; i < h; i++) {
        for(int idx = 0; idx < r[i]; idx++) {
            matrix[i][idx] = 1;
        }
    }

    for(int j = 0; j < w; j++) {
        for(int idx = 0; idx < c[j]; idx++) {
            matrix[idx][j] = 1;
        }
    }

    // check if valid after this process
    for(int i = 0; i < h; i++) {
        int contribution = 0;
        for(int j = 0; j < w && matrix[i][j] == 1; j++) {
            contribution += 1;
        }
        if(contribution != r[i]) {
            0.writeln;
            return;
        }
    }
    for(int j = 0; j < w; j++) {
        int contribution = 0;
        for(int i = 0; i < h && matrix[i][j] == 1; i++) {
            contribution += 1;
        }
        if(contribution != c[j]) {
            0.writeln;
            return;
        }
    }

    // Count number of free cells
    int free = 0;
    for(int i = 0; i < h; i++) {
        for(int j = 0; j < w; j++) {
            if(j-1 >= r[i] && i-1 >= c[j]) {
                free += 1;
            }
        }
    }
    int ans = 1;
    for(int i = 0; i < free; i++) {
        ans = (ans*2)%mod;
    }
    ans.writeln;
}

