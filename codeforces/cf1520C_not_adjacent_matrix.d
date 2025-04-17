// vicfred
// https://codeforces.com/contest/1520/problem/C
// greedy
import std.stdio;

void main() {
    int t;
    readf("%s\n", &t);

while(t--) {
    int n;
    readf("%s\n", &n);

    if(n == 2) {
        "-1".writeln;
        continue;
    }

    int[][] matrix = new int[][](n,n);
    int i = 1;
    bool flag = false;
    for(int y = 0; y < n; ++y) {
        for(int x = 0; x < n; ++x) {
            if(!flag && i*2 > n*n) {
                flag = true;
                i = 1;
            }
            if(flag) {
                matrix[y][x] = i*2-1;
                i += 1;
            }
            else {
                matrix[y][x] = i*2;
                i+=1;
            }
        }
    }
    for(int k = 0; k < n; k++) {
        for(int j = 0; j < n; j++) {
            writef("%s ", matrix[k][j]);
        } "".writeln;
    }
}
}
