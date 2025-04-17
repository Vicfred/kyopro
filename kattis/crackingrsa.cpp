// vicfred
// https://open.kattis.com/problems/crackingrsa
// math
#include <iostream>

using namespace std;

int main() {
    const int MAXN = 1e6+10;
    long phi[MAXN];
    for(int i = 1; i <= MAXN; ++i)
        phi[i] = i;

    /*
    for(int i = 1; i < 20; i++)
        cout << phi[i] << " ";
    cout << endl;
    */

    for(int i = 2; i <= MAXN; ++i)
        if(phi[i] == i)
            for(int j = i; j <= MAXN; j += i)
                phi[j] = (phi[j]/i) * (i - 1);

    /*
    for(int i = 1; i < 20; i++)
        cout << phi[i] << " ";
    cout << endl;
    */

    int t;
    cin >> t;

    long n, e;
    while(t--) {
        cin >> n >> e;
        for(int d = 1; d < phi[n]; d++) {
            if((d*e)%phi[n] == 1) {
                cout << d << endl;
                break;
            }
        }
    }

    return 0;
}

