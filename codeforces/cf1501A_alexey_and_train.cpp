// Vicfred
// https://codeforces.com/contest/1501/problem/A
// implementation
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    long t;
    cin >> t;

while(t--) {
    long n;
    cin >> n;
    vector<long> a(n+1), b(n+1);

    for(int i = 1; i <= n; ++i) {
        cin >> a[i] >> b[i];
    }

    vector<long> tm(n+1);
    for(int i = 1; i <= n; ++i) {
        cin >> tm[i];
    }

    long current = 0;
    long wait;
    for(int i = 1; i <= n; ++i) {
        current += a[i] - b[i-1] + tm[i]; // arrival at station i
        // cout << "arrive=" << current << endl;
        wait = (b[i] - a[i] - 1)/2 + 1;
        // cout << "a[" << i << "]=" << a[i] << endl;
        // cout << "b[" << i << "]=" << b[i] << endl;
        // cout << "wait " << wait << " seconds" << endl;
        current += wait; // wait this long

        if(current < b[i] && i != n)
            current = b[i];
        
        //cout << "leave=" << current << endl;
    }
    cout << current - wait << endl;
}
}

