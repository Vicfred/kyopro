// uninhm
// https://atcoder.jp/contests/abc241/tasks/abc241_c
// implementation

#include <iostream>
#include <vector>

#define SOLVE(IDX1, IDX2, IDX3, IDX4) \
  for (int i = 0; i < n; ++i) { \
    int blacks = 0; \
    int counted = 0; \
    int j; \
    bool failed = false; \
    for (j = 0; j < 6; ++j) \
      if (IDX3 < 0 || IDX3 >= n || IDX4 < 0 || IDX4 >= n) { \
        failed = true; \
        break; \
      } else if (v[IDX3][IDX4] == '#') ++blacks; \
    if (failed) continue; \
    if (blacks >= 4) { \
      std::cout << "Yes\n"; \
      return 0; \
    } \
    while (IDX1 < n && IDX2 < n && IDX3 < n && IDX4 < n && \
           IDX1 >= 0 && IDX2 >= 0 && IDX3 >= 0 && IDX4 >= 0) { \
      if (v[IDX1][IDX2] == '#') --blacks; \
      if (v[IDX3][IDX4] == '#') ++blacks; \
      if (blacks >= 4) { \
        std::cout << "Yes\n"; \
        return 0; \
      } \
      ++j; \
    } \
  }

int main() {
  int n;
  std::cin >> n;

  std::vector<std::string> v(n);
  for (int i = 0; i < n; ++i)
    std::cin >> v[i];

  SOLVE(i, j-6, i, j) // horizontal
  SOLVE(j-6, i, j, i) // vertical
  SOLVE(i+j-6, j-6, i+j, j) // diagonal right-down (half bottom)
  SOLVE(j-6, i+j-6, j, i+j) // diagonal right-down (half top)
  SOLVE(i+j-6, n-(j-6)-1, i+j, n-j-1) // diagonal left-down (half bottom)
  SOLVE(j-6, n-(i+j-6)-1, j, n-(i+j)-1) // diagonal left-down (half top)

  std::cout << "No\n";
}
