// https://atcoder.jp/contests/abc155/tasks/abc155_b
#include<iostream>
#include<vector>

using namespace std;

int main() {
    int n, tmp;
    cin >> n;

    vector<int> even;
    for (int i = 0; i < n; i++) {
        cin >> tmp;
        if (tmp % 2 == 0) even.push_back(tmp);
    }

    for (auto number : even) {
        if (number % 3 != 0 && number % 5 != 0) {
            cout << "DENIED" << endl;
            return 0;
        }
    }
    cout << "APPROVED" << endl;

    return 0;
}
