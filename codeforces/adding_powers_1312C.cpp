// Vicfred
// https://codeforces.com/problemset/problem/1312/C
#include <iostream>
#include <vector>

using namespace std;

long long binpow(long long a, long long b) {
    if (b == 0)
        return 1;
    long long res = binpow(a, b / 2);
    if (b % 2)
        return res * res * a;
    else
        return res * res;
}

vector<long long> digits(long long a, long long k) {
    vector<long long> b(60);
    b[0] = a%k;
    long long maxlimit = 30LL;
    if(k == 2LL)
        maxlimit = 60LL;
    for(long long pot = 1LL; pot < maxlimit; pot++) {
        long long sum = 0LL;
        for(long long i = 0LL; i < pot; i++) {
            sum += b[i]*binpow(k,i);
        }
        b[pot] = ((a%binpow(k,pot+1LL))-sum)/(binpow(k,pot));
    }
    return b;
}

int main() {
    int t;
    cin >> t;

    while(t--) {
        long long n, k;
        cin >> n >> k;

        vector<long long> a(n);
        for(long long i = 0LL; i < n; ++i)
            cin >> a[i];

        bool impossible = false;
        for(auto item: a) {
            for(auto digit: digits(item, k)) {
                if(digit > 1LL) {
                    impossible = true;
                }
            }
        }

        vector<int> used(60);
        for(int item: a) {
            auto coefs = digits(item,k);
            for(int i = 0; i < 60; i++) {
                if(coefs[i] >= 1LL) {
                    used[i] += 1;
                }
            }
        }

        for(auto i: used) {
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

