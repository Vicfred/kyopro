#include <stdio.h>

int main ()
{
  int n;
  scanf ("%d\n", &n);
  int q[n];
  for (int i = 1; i <= n; ++i)
    {
      int p_i;
      scanf ("%d", &p_i);
      q[p_i-1] = i;
    }

  for (int i = 0; i < n; ++i)
    printf ("%d ", q[i]);
  putchar ('\n');
}
