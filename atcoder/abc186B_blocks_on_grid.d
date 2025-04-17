// vicfred
// https://atcoder.jp/contests/abc186/tasks/abc186_b
// implementation
import std.algorithm;
import std.stdio;

void main() {
    int h, w;
    readf("%s %s\n", &h, &w);
    
    int[][] a = new int[][](h, w);

    for(int i = 0; i < h; i++) {
        for(int j = 0; j < w; j++) {
            readf("%s ", &a[i][j]);
        }
    }

    int minima = int.max;
    for(int i = 0; i < h; i++) {
        for(int j = 0; j < w; j++) {
            minima = min(minima, a[i][j]);
        }
    }

    int ans = 0;
    for(int i = 0; i < h; i++) {
        for(int j = 0; j < w; j++) {
            ans += a[i][j] - minima;
        }
    }

    ans.writeln;
}

