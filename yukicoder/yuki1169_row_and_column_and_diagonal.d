// vicfred
// https://yukicoder.me/problems/no/1169
// implementation
import std.stdio;

void main() {
    int n;
    readf("%s", &n);

    int[][] ans = new int[][](n,n);

    for(int i = 0; i < n; i++)
        for(int j = i, cnt = 0, num = i + 1; cnt < n; ++j, j %= n, ++cnt, --num, num <= 0 ? num = n : 0)
            ans[i][j] = num;

    foreach(row; ans) {
        foreach(item; row) {
            writef("%s ", item);
        } writefln("");
    }
}

