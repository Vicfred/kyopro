// vicfred
// https://atcoder.jp/contests/abl/tasks/abl_d
// segment tree
#include <iostream>
#include <vector>
#include <algorithm>
#include "segtree.hpp"

using namespace std;
using namespace atcoder;

int main() {
    const int maxn = 3e5+1;
    int n, k;
    cin >> n >> k;

    vector<int> a(n);
    for(int &i: a)
        cin >> i;

    auto operation = [] (int a, int b) -> int { return max(a, b); };
    auto starting = [] () -> int { return 0; };

    segtree<int, operation, starting> segmentitos(maxn);

    int ans = -1;
    for(int i: a) {
        int l = max(i - k, 0);
        int r = min(i + k, 300'000);
        int maxima = segmentitos.prod(l, r + 1) + 1;
        ans = max(ans, maxima);
        segmentitos.set(i, maxima);
    }

    cout << ans << endl;

    return 0;
}
