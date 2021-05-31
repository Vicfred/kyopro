// Vicfred
// https://open.kattis.com/problems/islands
// brute force
#include <iostream>
#include <vector>

using namespace std;

int main() {
    long p;
    cin >> p;

    while(p--) {
        long k;
        cin >> k;

        vector<long> sequence(12);
        for(long i = 0; i < 12; i++) {
            cin >> sequence[i];
        }

        long islands = 0;
        for(int i = 1; i < 11; i++) {
            for(int j = i; j < 11; j++) {
                //cout << i << " " << j << endl;
                long minima = 1L << 60;
                for(int k = i; k <= j; k++) {
                    minima = min(minima, sequence[k]);
                }
                //cout << "minima: " << minima << endl;
                if(minima > sequence[i-1] and minima > sequence[j+1])
                    islands += 1;
            }
        }
        cout << k << " " << islands << endl;
    }

    return 0;
}

