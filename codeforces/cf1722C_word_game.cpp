// vicfred
// https://codeforces.com/contest/1722/problem/C
// data structures
#include <iostream>
#include <map>
#include <string>
#include <vector>

using namespace std;

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    map<string, int> counter;
    vector<string> guy1(n), guy2(n), guy3(n);
    for (int i = 0; i < n; ++i) {
      cin >> guy1[i];
      counter[guy1[i]]++;
    }
    for (int i = 0; i < n; ++i) {
      cin >> guy2[i];
      counter[guy2[i]]++;
    }
    for (int i = 0; i < n; ++i) {
      cin >> guy3[i];
      counter[guy3[i]]++;
    }
    int score1, score2, score3;
    score1 = score2 = score3 = 0;
    for(const string& word : guy1) {
      if(counter[word] == 1) {
        score1 += 3;
      }
      if(counter[word] == 2) {
        score1 += 1;
      }
    }
    for(const string& word : guy2) {
      if(counter[word] == 1) {
        score2 += 3;
      }
      if(counter[word] == 2) {
        score2 += 1;
      }
    }
    for(const string& word : guy3) {
      if(counter[word] == 1) {
        score3 += 3;
      }
      if(counter[word] == 2) {
        score3 += 1;
      }
    }
    cout << score1 << " " << score2 << " " << score3 << endl;
  }
  return 0;
}
