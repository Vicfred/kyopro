// unihernandez22
// https://open.kattis.com/problems/cudoviste
// brute force

#include<iostream>
#include<string.h>
#include<vector>
#include<bits/stdc++.h>

using namespace std;

bool canApachurrar(vector<string> p, int i, int j) {
  return p[i][j] != '#' &&
	  p[i+1][j] != '#' &&
	  p[i][j+1] != '#' &&
	  p[i+1][j+1] != '#';
}

int countApachurros(vector<string> p, int i, int j) {
  vector<char> olis = {p[i][j], p[i+1][j], p[i][j+1], p[i+1][j+1]};
  return count(olis.begin(), olis.end(), 'X');
}

int ans[5];

int main() {
  int r, c;
  cin >> r >> c;

  vector<string> p(r);
  for (int i = 0; i < r; i++)
    cin >> p[i];

  for (int i = 0; i < r-1; i++)
    for (int j = 0; j < c-1; j++)
      if (canApachurrar(p, i, j))
        ans[countApachurros(p, i, j)] += 1;

  for (int i = 0; i < 5; i++)
    cout << ans[i] << endl;
}
