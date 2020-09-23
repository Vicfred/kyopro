// https://atcoder.jp/contests/abc155/tasks/abc155_a

#include<iostream>
#include<set>

using namespace std;

int main() {
    int a, b, c;
    cin >> a >> b >> c;

    set<int> values;
    values.insert(a);
    values.insert(b);
    values.insert(c);

    if (values.size() == 2) cout << "Yes" << endl;
    else cout << "No" << endl;

    return 0;
}
