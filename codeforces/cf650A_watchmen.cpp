// vicfred
// https://codeforces.com/problemset/problem/650/A
// math, set
#include <iostream>
#include <vector>
#include <unordered_map>
#include <map>
#include <utility>

using namespace std;

int main() {
    int n;
    cin >> n;

    vector<long long int> point(2);
    unordered_map<long long int, long long int> first;
    unordered_map<long long int, long long int> second;
    map<pair<int,int>, long long int> points;

    for(int i = 0; i < n; ++i) {
        cin >> point[0] >> point[1];
        first[point[0]] += 1;
        second[point[1]] += 1;
        points[make_pair(point[0], point[1])] += 1;
    }

    long long int ans = 0LL;

    for(auto item: first) {
        long long int i = item.second;
        ans += i*(i-1LL)/2LL;
    }

    for(auto item: second) {
        long long int i = item.second;
        ans += i*(i-1LL)/2LL;
    }

    for(auto item: points) {
        long long int i = item.second;
        ans -= i*(i-1LL)/2LL;
    }

    cout << ans << endl;

    return 0;
}
