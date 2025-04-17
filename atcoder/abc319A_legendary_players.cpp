// vicfred
// https://atcoder.jp/contests/abc319/tasks/abc319_a
// implementation, data structures
#include <iostream>
#include <map>

using namespace std;

int main() {
  map<string, int> ratings = {{"tourist", 3858},   {"ksun48", 3679},
                              {"Benq", 3658},      {"Um_nik", 3648},
                              {"apiad", 3638},     {"Stonefeang", 3630},
                              {"ecnerwala", 3613}, {"mnbvmar", 3555},
                              {"newbiedmy", 3516}, {"semiexp", 3481}};
  string name;
  cin >> name;
  cout << ratings[name] << endl;
  return 0;
}
