// Vicfred
// https://atcoder.jp/contests/abc380/tasks/abc380_a
// implementation
#include <iostream>
#include <string>
#include <map>

using namespace std;

int main() {
  string N;
  cin >> N;
  map<char, int> mapita;
  for(const char ch : N) {
    mapita[ch] += 1;
  }
  if(mapita['1'] == 1 and mapita['2'] == 2 and mapita['3'] == 3) {
    cout << "Yes" << endl;
  } else {
    cout << "No" << endl;
  }
  return 0;
}
