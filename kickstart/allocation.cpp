// Vicfred
// https://codingcompetitions.withgoogle.com/kickstart/round/000000000019ffc7/00000000001d3f56
// greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    long long int t;
    cin >> t;

    for(int kase = 1; kase <= t; kase++) {
        long long int n, b;
        cin >> n >> b;

        vector<long long int> a(n);
        for(long long int &item: a)
            cin >> item;

        sort(a.begin(), a.end());

        long long int ans = 0;
        while(true) {
            if(ans >= n) break;
            if(b < a[ans]) break;
            b -= a[ans++];
        }

        cout << "Case #" << kase << ": " << ans << endl;
    }
    return 0;
}

