// vicfred
// https://atcoder.jp/contests/abc313/tasks/abc313_b
// greedy
#include <iostream>
#include <set>

using namespace std;

int main() {
  int N, M;
  cin >> N >> M;
  set<int> strong, weak, seen;
  for(int i = 0; i < M; ++i) {
    int A, B;
    cin >> A >> B;
    strong.insert(A);
    weak.insert(B);
    seen.insert(A);
    seen.insert(B);
  }
  if(seen.size() < N) {
    cout << -1 << endl;
    return 0;
  }
  set<int> candidates;
  for(int i = 1; i <= N; ++i) {
    if(strong.count(i) > 0 and weak.count(i) == 0) {
      candidates.insert(i);
    }
  }
  if(candidates.size() != 1) {
    cout << -1 << endl;
  } else {
    cout << *candidates.begin() << endl;
  }
  return 0;
}
