// vicfred
// https://codeforces.com/problemset/problem/492/B
// dynamic programming
#include <algorithm>
#include <iomanip>
#include <iostream>
#include <vector>

using namespace std;
int n, l;

int abs(int d) {
  if (d < 0) {
    return -d;
  }
  return d;
}

bool check_valid_distance(const vector<long> &lanterns, const long double &d) {
  if (lanterns[0] - 0 > d) {
    return false;
  }
  for (int i = 1; i < n; ++i) {
    if (abs(lanterns[i] - lanterns[i - 1]) > 2 * d) {
      return false;
    }
  }
  if (l - lanterns[n - 1] > d) {
    return false;
  }
  return true;
}

int main() {
  cout << fixed << setprecision(12);
  const long double epsilon = 1e-10;
  cin >> n >> l;
  vector<long> a(n);
  for (int i = 0; i < n; ++i) {
    cin >> a[i];
  }
  sort(begin(a), end(a));
  /*
  for (int i = 0; i < n; ++i) {
    cout << a[i] << " ";
  }
  cout << endl;
  */
  long double left, right, middle;
  left = 0.0f;
  right = (long double)l;
  while (right - left > epsilon) {
    middle = (left + right) / 2.0f;
    // cout << "checking: " << middle << endl;
    if (check_valid_distance(a, middle)) {
      // cout << "distancia valida, right: " << middle << endl;
      right = middle;
    } else {
      // cout << "distancia invalida, left: " << middle << endl;
      left = middle;
    }
  }
  cout << middle << endl;
  return 0;
}
