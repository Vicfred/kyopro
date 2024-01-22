// Vicfred
// https://atcoder.jp/contests/abc337/tasks/abc337_c
// data structures, implementation
#include <iostream>
#include <unordered_map>

using namespace std;

int main() {
  unordered_map<int, int> totoro;
  int N;
  cin >> N;
  int current;
  int A;
  for(int i = 1; i <= N; ++i) {
    cin >> A;
    if(A == -1) {
      current = i;
    } else {
      totoro[A] = i;
    }
  }
  cout << current << " ";
  for(int i = 1; i < N; ++i) {
    cout << totoro[current] << " ";
    current = totoro[current];
  }
  cout << endl;
  return 0;
}
