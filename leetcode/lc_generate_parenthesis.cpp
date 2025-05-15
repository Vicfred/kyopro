// vicfred
// https://leetcode.com/problems/generate-parentheses/description/
// backtracking
#include <iostream>
#include <vector>

using namespace std;

void allParenthesis(int open, int close, int n, string &s,
                    vector<string> &out) {
  if (s.size() == 2 * n) {
    out.push_back(s);
    return;
  }
  // try adding '(' if we can
  if (open < n) {
    s.push_back('(');
    allParenthesis(open + 1, close, n, s, out);
    // remove it and continue the process (ie not taking it)
    s.pop_back();
  }
  // try adding ')' only if it would remain balanced
  if (close < open) {
    s.push_back(')');
    allParenthesis(open, close + 1, n, s, out);
    s.pop_back();
  }
}

vector<string> generateParenthesis(int n) {
  vector<string> out;
  string s;
  allParenthesis(0, 0, n, s, out);
  return out;
}

int main() {
  int n = 5;
  auto parentheses = generateParenthesis(n);
  cout << "All well-formed parentheses strings for n = " << n << ":\n";
  for (const auto &str : parentheses) {
    cout << str << "\n";
  }
  return 0;
}
