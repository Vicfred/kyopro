// uninhm
// https://open.kattis.com/problems/geppetto
// brute force, bitmask

#include<stdio.h>

int main() {
  int n, m;
  scanf("%d %d", &n, &m);

  int a[m], b[m];
  for (int i = 0; i < m; i++)
    scanf("%d %d", &a[i], &b[i]);

  long long ans = 0LL;
  for (int mask = 0; mask < 1 << n; mask++) {
    int flag = 1;
    for (int i = 0; i < m; i++) {
      if (
        mask & (1 << (a[i]-1)) &&
        mask & (1 << (b[i]-1))
      ) {
        flag = 0;
        break;
      }
    }
    if (flag)
      ans += 1;
  }
  printf("%d\n", ans);
}
