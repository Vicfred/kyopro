// Vicfred
// https://atcoder.jp/contests/abc167/tasks/abc167_c
// bitmasks
#include <algorithm>
#include <climits>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int N, M, X;
    cin >> N >> M >> X;

    vector<int> C(N);
    vector<vector<int>> A(N, vector<int>(M));

    for(int i = 0; i < N; ++i) {
        cin >> C[i];

        for(int j = 0; j < M; ++j) {
            cin >> A[i][j];
        }
    }

    int minima = 1<<30;

    for(int mask = 0; mask <= (1<<N)-1; ++mask) {
        int total = 0;
        vector<int> level(M);

        for(int bit = 0; bit < N; ++bit) {
            if(mask&(1<<bit)) {
                total += C[bit];

                for(int i = 0; i < M; ++i) {
                    level[i] += A[bit][i];
                }
            }
        }

        if(none_of(level.begin(),
                    level.end(),
                    [=](int x) { return x < X; })
          ) {
            minima = min(minima, total);
        }
    }

    if(minima == 1<<30)
        minima = -1;

    cout << minima << endl;

    return 0;
}

