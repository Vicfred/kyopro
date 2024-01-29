// Vicfred
// https://atcoder.jp/contests/abc338/tasks/abc338_b
// data structures
#include <iostream>
#include <map>

using namespace std;

int main() {
  string S;
  cin >> S;
  map<char, int> counter;
  for(const char &ch : S) {
    counter[ch] += 1;
  }
  int maxima = 0;
  for(const auto& [ch, count] : counter) {
    maxima = max(maxima, count);
  }
  for(const auto& [ch, count] : counter) {
    if(count == maxima) {
      cout << ch << endl;
      return 0;
    }
  }
  return 0;
}
