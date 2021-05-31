// uninhm
// https://atcoder.jp/contests/abc141/tasks/abc141_c
// greedy

#include<iostream>

using namespace std;

int main() {
  int n, k, q;
  cin >> n >> k >> q;

  int scores[n]{};

  int a;
  for(int i = 0; i < q; ++i) {
    cin >> a;
    scores[a-1]++;
  }

  for(int i = 0; i < n; ++i)
    if(q - scores[i] < k)
      cout << "Yes" << endl;
    else
      cout << "No" << endl;
}
