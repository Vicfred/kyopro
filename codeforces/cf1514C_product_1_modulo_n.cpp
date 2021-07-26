// Vicfred
// https://codeforces.com/contest/1514/problem/C
// math
#include <iostream>
#include <vector>

using namespace std;

int gcd(int a, int b) { return b == 0 ? a : gcd(b, a%b); }

int main() {
    int n;
    cin >> n;

    const int maxn = 1e5+1;
    vector<int> a(maxn);

    long long int p = 1LL;
    int ans = 0;

    for(int i = 0; i < n; ++i) {
        if(gcd(n, i) == 1) {
            ans += 1;
            a[i] = 1;
            p *= i;
            p %= n;
        }
    }

    if(p != 1) {
        a[p] = 0;
        ans -= 1;
    }
    cout << ans << endl;
    for(int i = 0; i < maxn; ++i) {
        if(a[i] == 1) {
            cout << i << " ";
        }
    } cout << endl;


}

