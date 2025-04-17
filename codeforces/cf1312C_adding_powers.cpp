// uninhm(* vicfred
// https://codeforces.com/problemset/problem/1312/C
// greedy, math
#include <algorithm>
#include <iterator>
#include <string>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    long long t;
    cin >> t;

    while(t--) {
        long long n, k;
        cin >> n >> k;

        vector<long long> a(n);
        for(long long i = 0; i < n; ++i)
            cin >> a[i];

        string ans = "YES";
        while(any_of(a.begin(), a.end(), [](long long x) { return x != 0; })) {
            auto b = a;
            transform(b.begin(), b.end(), b.begin(), [=](long long x) { return x%k; });
            vector<long long> c;
            copy_if(b.begin(), b.end(), back_inserter(c), [](long long x) { return x != 0; });
            vector<long long> d = {1LL};
            if(c > d) {
                ans = "NO";
                break;
            }
            transform(a.begin(), a.end(), a.begin(), [=](long long x) { return x/k; });
        }
        cout << ans << endl;
    }
}

