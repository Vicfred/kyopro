// vicfred
// https://yukicoder.me/problems/no/2870
// math
#include <cstdint>
#include <iostream>

using namespace std;

int main() {
  int64_t n, k;
  cin >> n >> k;
  if (n % k != 0) {
    cout << -1 << endl;
    return 0;
  }
  int64_t c = n / k;
  for (int i = 0; i < c; ++i) {
    cout << 1 << " ";
  }
  for(int i = c; i < n; ++i) {
    cout << 2 << "\n "[i == n - 1 ? 0 : 1];
  }
  return 0;
}
