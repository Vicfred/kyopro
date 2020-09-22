// https://atcoder.jp/contests/abc164/tasks/abc164_c
#include<iostream>
#include<set>
#include<string>

using namespace std;

int main() {
    int n;
    cin >> n;

    set<string> values;
    string value;
    for (int i = 0; i < n; i++) {
        cin >> value;
        values.insert(value);
    }

    cout << values.size() << endl;
    return 0;
}
