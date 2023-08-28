// Vicfred
// https://atcoder.jp/contests/abc317/tasks/abc317_c
// brute force, graphs
#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

int main() {
  long long N, M;
  cin >> N >> M;
  vector<int> cities;
  vector<vector<long long>> C(11, vector<long long>(11));
  for (int i = 0; i < M; ++i) {
    int a, b, c;
    cin >> a >> b >> c;
    C[a][b] = c;
    C[b][a] = c;
  }
  for (int i = 1; i <= 10; ++i) {
    cities.push_back(i);
  }
  /*
  for(int i = 1; i <= 10; ++i) {
    for(int j = 1; j <= 10; ++j) {
      cout << C[i][j] << " ";
    } cout << endl;
  }
  */
  long long maxima = 0;
  do {
    /*
    for (int i = 0; i < cities.size(); ++i) {
      cout << cities[i] << " ";
    }
    cout << endl;
    cout << "====" << endl;
    */
    long long distance = 0;
    for (int i = 0; i < N - 1; ++i) {
      int a = cities[i];
      int b = cities[i + 1];
      if (C[a][b] > 0) {
        distance += C[a][b];
      } else {
        maxima = max(maxima, distance);
        distance = 0;
      }
    }
    maxima = max(maxima, distance);
    /*
    cout << distance << endl;
    cout << "~~~~" << endl;
    */
    // cout << distance << endl;
  } while (next_permutation(begin(cities), end(cities)));
  cout << maxima << endl;
  return 0;
}
