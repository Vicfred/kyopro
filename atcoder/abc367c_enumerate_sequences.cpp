// vicfred
// https://atcoder.jp/contests/abc367/tasks/abc367_c
// combinatorics, implementation<
#include <iostream>
#include <vector>
#include <queue>
#include <map>
#include <set>

using namespace std;

int main() {
  int N, K;
  cin >> N >> K;
  vector<int> R(N);
  for(int i = 0; i < N; ++i) {
    cin >> R[i];
  }
  set<string> lexi;
  map<string, bool> visited;
  queue<string> q;
  string s = "";
  visited[s] = true;
  q.push(s);
  while(!q.empty()) {
    string v = q.front();
    q.pop();
    if(v.size() >= N) {
      lexi.insert(v);
    } else {
      visited[v + "1"] = true;
      q.push(v + "1");
      visited[v + "2"] = true;
      q.push(v + "2");
      visited[v + "3"] = true;
      q.push(v + "3");
      visited[v + "4"] = true;
      q.push(v + "4");
      visited[v + "5"] = true;
      q.push(v + "5");
    }
  }
  for(const auto& item : lexi) {
    bool valid = true;
    int sum = 0;
    for(int i = 0; i < N; ++i) {
      sum += (item[i] - '0');
      if((item[i] - '0') > R[i]) {
        valid = false;
      }
    }
    if(sum % K != 0) {
      valid = false;
    }
    if(valid) {
      for(const auto& ch : item) {
        cout << ch << " ";
      } cout << endl;
    }
  }
  return 0;
}
