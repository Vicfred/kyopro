// Garo9521
// https://codeforces.com/contest/1401/problem/C
// Math

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

void solve() {
    int N;
    cin >> N;
    vector <int> A(N), sorted(N);
    for (int i = 0; i < N; ++i) {
        cin >> A[i]; 
        sorted[i] = A[i];
    }
    sort(A.begin(), A.end());
    int minimum_number = A[0];
    for (int i = 0; i < N; ++i) {
        if(sorted[i] == A[i] || __gcd(A[i], minimum_number) == minimum_number)
            continue;
        cout << "NO\n";
        return;
    }
    cout << "YES\n"; 
}

int main() {
    int T;
    cin >> T;
    while (T--) {
       solve();
    }
    return 0;
}