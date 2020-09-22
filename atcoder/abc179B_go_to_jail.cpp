// https://atcoder.jp/contests/abc179/tasks/abc179_b
#include<iostream>

using namespace std;

int main() {
    int n, a, b;
    cin >> n;
    int count = 0;
    while (n > 0) {
        cin >> a >> b;
        if (a == b) count += 1;
        else count = 0;

        if (count == 3) {
            cout << "Yes" << endl;
            break;
        }
        n--;
    }

    if (count < 3) cout << "No" << endl;

    return 0;
}
