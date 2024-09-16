// Vicfred
// https://atcoder.jp/contests/abc371/tasks/abc371_a
// implementation
#include <iostream>

using namespace std;

int main() {
  string Sab, Sac, Sbc;
  cin >> Sab >> Sac >> Sbc;
  string brothers = Sab + Sac + Sbc;
  if (brothers == "><<" or brothers == "<>>") {
    cout << "A" << endl;
  }
  if (brothers == "<<<" or brothers == ">>>") {
    cout << "B" << endl;
  }
  if (brothers == "<<>" or brothers == ">><") {
    cout << "C" << endl;
  }
  return 0;
}
