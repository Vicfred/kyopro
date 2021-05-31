// uninhm
// https://atcoder.jp/contests/abc143/tasks/abc143_c
// implementation

#include<iostream>
#include<stdio.h>

using namespace std;

int main() {
  int n;
  scanf("%d\n", &n);

  char c, last;
  scanf("%c", &c);
  last = c;

  int ans = 1;
  for(int i = 1; i < n; ++i) {
    cin >> c;
  
    if(c != last)
      ans++;

    last = c;
  }

  cout << ans << endl;
}
