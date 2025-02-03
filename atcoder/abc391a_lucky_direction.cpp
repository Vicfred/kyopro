// Vicfred
// https://atcoder.jp/contests/abc391/tasks/abc391_a
// implementation
#include <iostream>
#include <string>
#include <map>

using namespace std;

int main() {
  string D;
  cin >> D;
  map<string,string> opposite;
  opposite["N"] = "S";
  opposite["S"] = "N";
  opposite["W"] = "E";
  opposite["E"] = "W";
  opposite["NE"] = "SW";
  opposite["NW"] = "SE";
  opposite["SE"] = "NW";
  opposite["SW"] = "NE";
  cout << opposite[D] << endl;
  return 0;
}
