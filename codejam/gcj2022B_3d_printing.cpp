// Vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a4672b
//  math, greedy, implementation
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;
for(int kase = 1; kase <= t; ++kase) {
    vector<int> cyan(3), magenta(3), yellow(3), black(3);
    bool impossible = false;
    for(int i = 0; i < 3; ++i) {
        cin >> cyan[i] >> magenta[i] >> yellow[i] >> black[i];
        if(cyan[i] + magenta[i] + yellow[i] + black[i] < 1e6) {
            impossible = true;
        }
    }
    sort(cyan.begin(), cyan.end());
    sort(magenta.begin(), magenta.end());
    sort(yellow.begin(), yellow.end());
    sort(black.begin(), black.end());
    int C, M, Y, K;
    C = cyan[0];
    M = magenta[0];
    Y = yellow[0];
    K = black[0];
    if(C + M + Y + K < 1e6) {
        impossible = true;
    }
    if(impossible) {
        cout << "Case #" << kase << ": IMPOSSIBLE" << endl;
        continue;
    }
    int leftover = M + Y + K;
    if(leftover >= 1e6) {
        C = 0;
    } else {
        C = 1e6 - leftover;
    }
    leftover = C + Y + K;
    if(leftover >= 1e6) {
        M = 0;
    } else {
        M = 1e6 - leftover;
    }
    leftover = C + M + K;
    if(leftover >= 1e6) {
        Y = 0;
    } else {
        Y = 1e6 - leftover;
    }
    leftover = C + Y + M;
    if(leftover >= 1e6) {
        K = 0;
    } else {
        K = 1e6 - leftover;
    }
    cout << "Case #" << kase << ": " << C << " " << M << " " << Y << " " << K << endl;
}
    return 0;
}
