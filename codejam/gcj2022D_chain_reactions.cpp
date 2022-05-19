// Vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a45ef7#problem
// brute force
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  for (int kase = 1; kase <= t; ++kase) {
    int N;
    cin >> N;
    vector<long long> F(12);
    for (int i = 1; i <= N; ++i) {
      cin >> F[i];
    }
    vector<long long> P(12);
    vector<long long> is_initiator(12, 1);
    is_initiator[0] = 0;
    for (int i = 1; i <= N; ++i) {
      cin >> P[i];
      is_initiator[P[i]] = 0;
    }
    vector<long long> initiator;
    for (int i = 1; i <= 10; ++i) {
      if (is_initiator[i] == 1) {
        initiator.push_back(i);
      }
    }
    long long answer = -1L;
    do {
      // for (int i = 0; i < initiator.size(); ++i) {
      //   cout << initiator[i] << " ";
      // }
      // cout << endl;
      vector<long long> visited(12);
      long long fun = 0L;
      for (auto element : initiator) {
        // cout << "initiator: " << element << endl;
        // cout << "parent : " << P[element] << endl;
        // cout << "visited : " << visited[element] << endl;
        // cout << "====" << endl;
        long long current = element;
        long long chain_fun = F[current];
        while (current != 0 && visited[current] == 0) {
          // cout << "visitando " << current << " con fun: " << F[current] << endl;
          visited[current] = 1;
          chain_fun = max(chain_fun, F[current]);
          current = P[current];
        }
        fun += chain_fun;
        // cout << "VISITADOS" << endl;
        // for(int i = 0; i < visited.size(); ++i) {
        //   cout << visited[i] << " ";
        // } cout << endl;
      }
      // cout << "fun : " << fun << endl;
      answer = max(answer, fun);
    } while (next_permutation(initiator.begin(), initiator.end()));
    cout << "Case #" << kase << ": " << answer << endl;
  }
  return 0;
}
