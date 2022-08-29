#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

struct point {
  long long x, y;
};

int main() {
  int t;
  cin >> t;
  for (int kase = 0; kase < t; ++kase) {
    int n;
    cin >> n;
    // cout << "case " << kase + 1 << endl;
    vector<point> points(n);
    for (int i = 0; i < n; ++i) {
      cin >> points[i].x >> points[i].y;
    }
    sort(begin(points), end(points), [](point a, point b) { return a.x < b.x; });
    // for (const auto &item : points) {
    //   cout << item.x << "," << item.y << endl;
    // }
    if(n%2 == 1) {
      cout << 1 << endl;
      continue;
    }
    long long Lx = points[n/2].x - points[n/2 - 1].x + 1;
    sort(begin(points), end(points), [](point a, point b) { return a.y < b.y; });
    long long Ly = points[n/2].y - points[n/2 - 1].y + 1;
    cout << Lx * Ly << endl;
  }
  return 0;
}
