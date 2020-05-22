// Vicfred & unihernandez22
// https://atcoder.jp/contests/abc165/tasks/abc165_c
// dfs, brute force
#include <algorithm>
#include <iostream>
#include <vector>
#include <queue>

using namespace std;

int main() {
    int n, m, q;
    cin >> n >> m >> q;

    vector<int> a(q);
    vector<int> b(q);
    vector<int> c(q);
    vector<int> d(q);

    for(int i = 0; i < q; i++)
        cin >> a[i] >> b[i] >> c[i] >> d[i];

    queue<vector<int>> A;
    for(int i = 1; i <= m; ++i)
        A.push({i});

    while(A.front().size() != n) {
        auto item = A.front();
        A.pop();
        int size = item.size();
        for(int i = item[size-1]; i <= m; i++) {
            item.push_back(i);
            A.push(item);
            item.pop_back();
        }
    }

    long long maxima = 0LL;

    while(!A.empty()) {
        long long local = 0LL;

        auto item = A.front();
        A.pop();

        for(int i = 0; i < q; i++)
            if((item[b[i]-1] - item[a[i]-1]) == c[i])
                local += d[i];

        maxima = max(maxima, local);
    }

    cout << maxima << endl;

    return 0;
}

