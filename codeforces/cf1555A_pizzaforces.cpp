// uninhm
// https://codeforces.com/contest/1555/problem/A
// greedy

#include <iostream>

int
main ()
{
  int t;
  std::cin >> t;

  long long int n;
  while (t--)
    {
      std::cin >> n;
      if (n <= 6)
        std::cout << 15 << std::endl;
      else
        std::cout << (n + n%2) * 5 / 2 << std::endl;
    }
}