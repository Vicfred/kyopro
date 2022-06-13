// Vicfred
// https://codeforces.com/problemset/problem/545/C
//
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

struct tree {
  long x, h;
};

long distance(long x, long y) {
  return (x - y) > 0 ? (x - y): (y - x);
}

int main() {
  long n;
  cin >> n;

  vector<tree> trees(n);

  for(int i = 0; i < n; ++i) {
    cin >> trees[i].x >> trees[i].h;
  }

  /*
  for(int i = 0; i < n; ++i) {
    cout << trees[i].x << " " << trees[i].h << endl;
  }
  */

  long ans = n > 1 ? 2L : 1L;
  long last = trees[0].x;
  for(int i = 1; i < n - 1; ++i) {
    if(distance(trees[i].x, last) > trees[i].h) {
      last = trees[i].x;
      ans += 1;
      // cout << "cuttting tree " << i + 1 << " " << trees[i].x << " to the left distance: " << distance(trees[i].x, trees[i - 1].x)<<  endl;
    } else if(distance(trees[i].x, trees[i + 1].x) > trees[i].h) {
      last = trees[i].x + trees[i].h;
      ans += 1;
      // cout << "cuttting tree " << i + 1 << " " << trees[i].x << " to the right distance: " << distance(trees[i].x, trees[i + 1].x) << endl;
    } else {
      last = trees[i].x;
    }
  }

  cout << ans << endl;

  return 0;
}
