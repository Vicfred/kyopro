// Vicfred
// https://codeforces.com/problemset/problem/1330/B
// greedy, implementation

#include <algorithm>
#include <iostream>
#include <vector>
#include <set>

using namespace std;

bool ispermutation(set<int> items) {
    int size = items.size();
    for(int i = 1; i <= size; ++i)
        if(items.count(i) == 0)
            return false;
    return true;
}

int main() {
    int t;
    cin >> t;

    while(t--) {
        int n;
        cin >> n;
        vector<int> a(n);
        vector<int> sizes;
        
        for(int i = 0; i < n; ++i)
            cin >> a[i];

        int ways = 0;

        set<int> p1;
        set<int> p2;

        for(int i = 0; i < n; ++i) {
            if(p1.count(a[i]) > 0)
                break;
            p1.insert(a[i]);
        }

        for(int i = p1.size(); i < n; ++i) {
            if(p2.count(a[i]) > 0)
                break;
            p2.insert(a[i]);
        }

        int total = p1.size() + p2.size();

        if(ispermutation(p1) and ispermutation(p2) and total == n) {
            ways += 1;
            sizes.push_back(p1.size());
        }

        p1.clear(); p2.clear();

        for(int i = n-1; i > 0; --i) {
            if(p1.count(a[i]) > 0)
                break;
            p1.insert(a[i]);
        }

        for(int i = n-1-p1.size(); i >= 0; --i) {
            if(p2.count(a[i]) > 0)
                break;
            p2.insert(a[i]);
        }

        total = p1.size() + p2.size();

        if(ispermutation(p1) and ispermutation(p2) and total == n) {
            ways += 1;
            sizes.push_back(p2.size());
        }

        if(sizes.size() == 2 and sizes[0] == sizes[1]) {
            ways -= 1;
            sizes.clear();
            sizes.push_back(p2.size());
        }

        cout << ways << endl;
        for(int size: sizes)
            cout << size << " " << n-size << endl;
    }
    return 0;
}

