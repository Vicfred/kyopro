// vicfred
// https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_c
// set, ordered set, balanced tree, data structure
#include <iostream>
#include <set>

using namespace std;

int main() {
    const int maxn = 200000;

    set<int> numbers;
    for(int i = 0; i <= maxn; i++) {
        numbers.insert(i);
    }

    int n;
    cin >> n;

    int p;
    for(int i = 0; i < n; i++) {
        cin >> p;
        auto it = numbers.find(p);
        if(it != numbers.end())
            numbers.erase(it);
        cout << *numbers.begin() << endl;
    }
}

