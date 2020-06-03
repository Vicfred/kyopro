// Vicfred
// https://codeforces.com/problemset/problem/1324/D
// math, binary search

#include <algorithm>
#include <iostream>
#include <iterator>
#include <vector>

using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> a(n);
    vector<int> b(n);

    for(int i = 0; i < n; i++) {
        cin >> a[i];
    }

    for(int i = 0; i < n; i++) {
        cin >> b[i];
    }

    vector<int> c(n);
    for(int i = 0; i < n; i++) {
        c[i] = a[i] - b[i];
    }

    sort(c.begin(), c.end());

    long long int ans = 0;
    for(auto i = 0; i < n; i++) {
        int match = c[i]*(-1)+1;

        int left = i+1;
        int right = n-1;

        while(left <= right) {
            int middle = (left+right)/2;

            if(c[middle] < match) {
                left = middle+1;
            } else {
                right = middle-1;
            }
        }

        ans += n-left;
    }

    cout << ans << endl;
}

