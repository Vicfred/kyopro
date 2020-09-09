// ctx_ethanatos
// https://codeforces.com/contest/1407/problem/C
// math
#include <queue>
#include <vector>
#include <iostream>
using namespace std;
 
int main() {
  int n;
  cin >> n;
 
  queue<int> q;
  vector<bool> found(n);
  vector<int> answers(n);
  for (int i = 1; i <= n; ++i)
    q.push(i);
 
  // O(n - 1)
  while (q.size() > 1) {
    int x = q.front(); q.pop();
    int y = q.front(); q.pop();
    cout << "? " << x << " " << y << endl;
    cout << "? " << y << " " << x << endl;
 
    int px_mod_py, py_mod_px;
    cin >> px_mod_py >> py_mod_px;
    if (px_mod_py > py_mod_px) {
      // Encontre el valor de px.
      answers[x - 1] = px_mod_py;
      found[px_mod_py - 1] = true;
      q.push(y);
    } else {
      // Encontre el valor de py.
      answers[y - 1] = py_mod_px;
      found[py_mod_px - 1] = true;
      q.push(x);
    }
  }
 
  for (int i = 0; i < n; ++i) {
    if (!found[i]) {
      answers[q.front() - 1] = i + 1;
      break;
    }
  }
 
  cout << "!";
  for (int a : answers)
    cout << " " << a;
  cout << "\n";
  return 0;
}
