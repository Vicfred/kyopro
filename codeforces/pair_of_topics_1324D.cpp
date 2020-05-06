// Vicfred
// https://codeforces.com/problemset/problem/1324/D
// math, binary search

#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> a(n);
    vector<int> b(n);

    for(int i = 0; i < n; i++) {
        cin >> a[i];
    }

    for(int i = 0; i < n; i++) {
        cin >> b[i];
    }

    vector<int> c(n);
    for(int i = 0; i < n; i++) {
        c[i] = a[i] - b[i];
    }

    sort(c.begin(), c.end());

    long long int ans = 0;
    for(auto i = c.begin(); i < c.end(); i++) {
        int match = (*i)*(-1)+1;
        auto lower = lower_bound(i+1, c.end(), match);
        ans += distance(lower, c.end());
    }

    cout << ans << endl;
}

