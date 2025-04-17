// vicfred
// https://atcoder.jp/contests/abl/tasks/abl_c
// graph, dsu, dfs, bfs
#include <iostream>
#include "dsu.hpp"

using namespace std;
using namespace atcoder;

int main() {
    int n, m;
    cin >> n >> m;

    dsu uf(n);

    int a, b;
    for(int i = 0; i < m; i++) {
        cin >> a >> b;
        a -= 1;
        b -= 1;
        uf.merge(a, b);
    }

    auto cities = uf.groups();

    cout << cities.size() - 1 << endl;

    return 0;
}

