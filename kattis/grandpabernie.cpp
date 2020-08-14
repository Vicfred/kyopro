// Vicfred
// https://open.kattis.com/problems/grandpabernie
// data structures, implementation
#include <algorithm>
#include <iostream>
#include <vector>
#include <unordered_map>
#include <string>

using namespace std;

int main() {
    int n;
    cin >> n;

    unordered_map<string, vector<int>> visits;

    string s;
    int y;
    for(int i = 0; i < n; i++) {
        cin >> s >> y;
        visits[s].push_back(y);
    }

    int q;
    cin >> q;

    for(auto &item: visits) {
        sort(item.second.begin(), item.second.end());
    }

    /*
    for(auto item: visits) {
        cout << item.first << " ";
        for(auto year: item.second) {
            cout << year << " ";
        } cout << endl;
    }
    */

    for(int i = 0; i < q; i++) {
        cin >> s >> y;
        y -= 1;
        cout << visits[s][y] << endl;
    }

    return 0;
}

