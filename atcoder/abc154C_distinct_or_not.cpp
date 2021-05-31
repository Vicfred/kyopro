// https://atcoder.jp/contests/abc154/tasks/abc154_c
#include<iostream>
#include<set>

using namespace std;

int main() {
    int n;
    cin >> n;

    set<int> values;
    int value;
    for (int i = 0; i < n; i++) {
        cin >> value;
        values.insert(value);
    }

    if (int(values.size()) == n) cout << "YES" << endl;
    else cout << "NO" << endl;
    return 0;
}
