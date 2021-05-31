#include <algorithm>
#include <vector>
#include <utility>
#include <iostream>
#include <map>
#include "dsu.hpp"

using namespace std;

using atcoder::dsu;

struct city {
    int first, second, index;
};

const int inf = 1 << 30;

int main() {
    int n;
    cin >> n;

    vector<city> cities(n);

    for(int i = 0; i < n; i++) {
        cin >> cities[i].first;
        cin >> cities[i].second;
        cities[i].index = i;
    }
    
    sort(begin(cities), end(cities),
            [](city a, city b){ return a.first < b.first; });

    dsu uf(n);
    map<int, int> visited;
    visited[cities[0].second] = 0;

    for(int i = 1; i < n; i++) {
        vector<int> erased;
        pair<int,int> minima = make_pair(inf, inf);

        for(auto [x, y]: visited) {
            if(x < cities[i].second) {
                uf.merge(i, y);
                erased.push_back(x);
                if(minima.first > x)
                    minima = make_pair(x, y);
            } else {
                break;
            }
        }

        for(auto item: erased)
            visited.erase(item);

        int position = minima.second;
        if(minima.first > cities[i].second) {
            minima = make_pair(cities[i].second, i);
            position = i;
        }
        visited[minima.first] = position;
    }

    vector<int> ans(n);
    for(int i = 0; i < n; i++)
        ans[cities[i].index] = uf.size(i);

    for(int i = 0; i < n; i++)
        cout << ans[i] << endl;

    return 0;
}

