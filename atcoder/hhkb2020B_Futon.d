// Vicfred
// https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_b
// implementation
import std.stdio;

void main() {
    int h, w;
    readf("%s %s\n", &h, &w);

    string[] grid = new string[h];
    for(int i = 0; i < h; i++) {
        readf("%s\n", grid[i]);
    }

    long ans = 0L;
    for(int i = 0; i < h; i++) {
        for(int j = 0; j < w; j++) {
            if(i + 1 < h)
                if(grid[i][j] == '.' && grid[i + 1][j] == '.')
                    ans += 1;
            if(i - 1 >= 0)
                if(grid[i][j] == '.' && grid[i - 1][j] == '.')
                    ans += 1;
            if(j + 1 < w)
                if(grid[i][j] == '.' && grid[i][j + 1] == '.')
                    ans += 1;
            if(j - 1 >= 0)
                if(grid[i][j] == '.' && grid[i][j - 1] == '.')
                    ans += 1;
        }
    }

    ans /= 2L;

    ans.writeln;
}

