// uninhm
// https://atcoder.jp/contests/abc232/tasks/abc232_d
// dp

import std.stdio: writeln, readf, readln;
import std.array: array;
import std.conv: to;
import std.range: iota;
import std.algorithm: map, max;
import std.string: chomp;

void main() {
  int h, w;
  "%d %d\n".readf(h, w);
  dchar[][] grid = iota(0, h).map!(_ => readln.chomp.array).array;
  int[][] dp = new int[][](h, w);
  dp[0][0] = 1;
  int ans = 0;
  for (int i = 0; i < h; ++i)
    for (int j = 0; j < w; ++j) {
      if (grid[i][j] == '#') continue;
      if (i > 0 && dp[i - 1][j] > 0)
        dp[i][j] = max(dp[i][j], 1 + dp[i - 1][j]);
      if (j > 0 && dp[i][j - 1] > 0)
        dp[i][j] = max(dp[i][j], 1 + dp[i][j - 1]);
      if (dp[i][j] > ans)
        ans = dp[i][j];
    }
  ans.writeln;
}
