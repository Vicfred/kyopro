// uninhm
// https://atcoder.jp/contests/abc185/tasks/abc185_a
// implementation

#include <stdio.h>

int main() {
  int a[4];
  scanf("%d %d %d %d", &a[0], &a[1], &a[2], &a[3]);

  int ans = 1 << 30;
  for(int i = 0; i < 4; ++i)
    ans = a[i] < ans ? a[i] : ans;

  printf("%d\n", ans);
}

