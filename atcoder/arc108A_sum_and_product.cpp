// uninhm
// https://atcoder.jp/contests/arc108/tasks/arc108_a
// math

#include<iostream>

using namespace std;

int main() {
  long s, p;
  cin >> s >> p;

  for(long n = 1; n*n <= p; ++n) {
    if(n* (s - n) == p) {
      cout << "Yes" << endl;
      return 0;
    }
  }

  cout << "No" << endl;
}
