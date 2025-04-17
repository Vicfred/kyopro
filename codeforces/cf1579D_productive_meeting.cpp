// vicfred
// https://codeforces.com/problemset/problem/1579/D
// greedy, data structures
#include <iostream>
#include <set>
#include <vector>

using namespace std;

struct person {
  int sociability;
  int index;
};

struct PersonCmp {
  bool operator ()(const person &lhs, const person &rhs) const {
    if (lhs.sociability == rhs.sociability) {
      return lhs.index < rhs.index;
    }
    return lhs.sociability < rhs.sociability;
  }
};

struct point {
  int x, y;
};

int main() {
  int t;
  cin >> t;
  while (t--) {
    int n;
    cin >> n;
    set<person, PersonCmp> persons;
    vector<point> matches;
    for (int i = 0; i < n; ++i) {
      person juan;
      juan.index = i + 1;
      cin >> juan.sociability;
      persons.insert(juan);
    }
    while(persons.size() >= 2) {
      person lhs = *persons.begin();
      persons.erase(persons.begin());
      person rhs = *persons.rbegin();
      persons.erase(persons.find(rhs));
      if(lhs.sociability > 0 && rhs.sociability > 0) {
        matches.push_back({lhs.index, rhs.index});
        lhs.sociability -= 1;
        rhs.sociability -= 1;
      }
      if(lhs.sociability > 0) {
        persons.insert(lhs);
      }
      if(rhs.sociability > 0) {
        persons.insert(rhs);
      }
    }
    cout << matches.size() << endl;
    for(const auto& item : matches) {
      cout << item.y << " " << item.x << endl;
    }
  }
  return 0;
}
