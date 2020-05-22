// Vicfred
// https://atcoder.jp/contests/abc165/tasks/abc165_d
// math
#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    long long a, b, n;
    cin >> a >> b >> n;

    cout << (a*min(b-1LL, n))/b << endl;

    return 0;
}

