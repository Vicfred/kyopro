// vicfred
// https://open.kattis.com/problems/geppetto
// brute force, bitmask
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int N, M;
    cin >> N >> M;

    vector<int> a(M), b(M);
    for(int i = 0; i < M; i++) {
        cin >> a[i] >> b[i];
        a[i] -= 1;
        b[i] -= 1;
    }

    long long ans = 0LL;
    for(int mask = 0; mask < 1 << N; mask++) {
        bool flag = true;

        for(int i = 0; i < M; i++) {
            if(
                mask & (1 << a[i]) and
                mask & (1 << b[i])
            ) {
                flag = false;
                break;
            }
        }
        
        if(flag)
            ans += 1;
    }

    cout << ans << endl;

    return 0;
}

