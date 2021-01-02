// unihernandez22
// https://atcoder.jp/contests/abc184/tasks/abc184_b
// implementation, simulation

#include<iostream>
#include<string>

using namespace std;

int main() {
  int n, x;
  cin >> n >> x;

  string s;
  cin >> s;

  for(char c: s)
    if(c == 'o')
      x++;
    else if(c == 'x' && x > 0)
      x--;

  cout << x << endl;
}
