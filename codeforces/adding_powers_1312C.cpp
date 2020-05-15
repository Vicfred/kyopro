// Vicfred
// https://codeforces.com/problemset/problem/1312/C
#include <iostream>
#include <vector>

using namespace std;

vector<int> digits(int a, int k) {
    vector<int> ans;

    while(a >= k) {
        ans.push_back(a%k);
        a = a/k;
    }
    
    ans.push_back(a);

    return ans;
}

int main() {
    int t;
    cin >> t;

    while(t--) {
        int n, k;
        cin >> n >> k;

        vector<int> a(n);
        for(int i = 0; i < n; ++i)
            cin >> a[i];

        bool impossible = false;
        for(int item: a) {
            for(int digit: digits(item, k)) {
                if(digit > 1) {
                    impossible = true;
                }
            }
        }

        vector<int> used(66);
        for(int item: a) {
            vector<int> coefs = digits(item,k);
            for(int i = 0; i < coefs.size(); i++) {
                if(coefs[i] >= 1) {
                    used[i] += 1;
                }
            }
        }

        for(int i: used) {
            if(i > 1) {
                impossible = true;
            }
        }

        if(impossible)
            cout << "NO" << endl;
        else
            cout << "YES" << endl;
    }
}

