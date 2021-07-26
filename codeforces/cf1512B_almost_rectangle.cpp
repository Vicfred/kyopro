// Vicfred
// https://codeforces.com/contest/1512/problem/B
// implementation, greedy
#include <iostream>
#include <string>
#include <tuple>
#include <vector>
#include <utility>

using namespace std;

int main() {
    int t;
    cin >> t;

while(t--) {
    int n;
    cin >> n;

    vector<string> grid(n);
    for(auto &row : grid) {
        cin >> row;
    }

    vector<pair<int,int>> positions;
    for(int i = 0; i < n; ++i) {
        for(int j = 0; j < n; ++j) {
            if(grid[i][j] == '*') {
                positions.push_back({i, j});
            }
        }
    }

    // same row
    if (positions[0].first == positions[1].first) {
        if(positions[0].first == 0) {
            positions.push_back({1, positions[0].second});
            positions.push_back({1, positions[1].second});
        } else {
            positions.push_back({positions[0].first - 1, positions[0].second});
            positions.push_back({positions[1].first - 1, positions[1].second});
        }
    }

    // same column
    else if (positions[0].second == positions[1].second) {
        if(positions[0].second == 0) {
            positions.push_back({positions[0].first, 1});
            positions.push_back({positions[1].first, 1});
        } else {
            positions.push_back({positions[0].first, positions[0].second - 1});
            positions.push_back({positions[1].first, positions[1].second - 1});
        }
    }

    // different row and different column
    else {
        int x, y, i, j;
        tie(x, y) = positions[0];
        tie(i, j) = positions[1];
        positions.push_back({x,j});
        positions.push_back({i,y});
    }

    for(const auto& [x, y] : positions) {
        grid[x][y] = '*';
    }

    for(const auto& row : grid) {
        cout << row << endl;
    }
}
    return 0;
}

