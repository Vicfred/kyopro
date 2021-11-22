// uninhm
// https://codeforces.com/contest/1542/problem/B
// modulo, greedy

#include <stdio.h>

int main ()
{
  long long t;
  scanf ("%lld\n", &t);
  while (t--)
    {
      long long n, a, b;
      scanf ("%lld %lld %lld\n", &n, &a, &b);
      long long m = n % b;

      if (a == 1)
        {
          if ((n-1)%b == 0)
            puts ("Yes");
          else
            puts ("No");
          continue;
        }

      long long x = 1;
      long long found = 0;
      while (x <= n)
        {
          if (x%b == m)
            {
              found = 1;
              break;
            }
          x *= a;
        }
      if (found)
        puts ("Yes");
      else
        puts ("No");
    }
}
