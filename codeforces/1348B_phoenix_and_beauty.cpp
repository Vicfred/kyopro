// Vicfred
// https://codeforces.com/problemset/problem/1348/B
// two pointers, greedy

#include <iostream>
#include <set>

using namespace std;

int main() {
    int t;
    cin >> t;

    for(int kase = 1; kase <= t; ++kase) {
        int n, k;
        cin >> n >> k;

        set<int> a;

        for(int i = 0; i < n; ++i) {
            int ins;
            cin >> ins;
            a.insert(ins);
        }

        if(a.size() > k) {
            cout << "-1" << endl;
            continue;
        }

        cout << n*k << endl;

        for(int i = 0; i < n; ++i) {
            for(auto item: a) {
                cout << item << " ";
            }

            for(int j = 0; j < (k-a.size()); ++j) {
                cout << "1 ";
            }
        } cout << endl;
    }
}

