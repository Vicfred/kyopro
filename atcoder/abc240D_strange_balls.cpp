// uninhm
// https://atcoder.jp/contests/abc240/tasks/abc240_d
// implementation

#include <iostream>
#include <stack>
#include <utility>

int main() {
  int n;
  std::cin >> n;
  std::stack<std::pair<int, int>> s;
  int size = 0;

  while (n--) {
    int a;
    std::cin >> a;

    size++;
    if (s.empty() || s.top().first != a) {
      s.push(std::make_pair(a, 1));
    } else {
      s.top().second++;
      if (s.top().second == a) {
        size -= a;
        s.pop();
      }
    }

    std::cout << size << "\n";
  }
}
