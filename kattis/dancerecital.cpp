// vicfred
// https://open.kattis.com/problems/dancerecital
// brute force, permutations
#include <algorithm>
#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
    int R;
    cin >> R;

    vector<string> recital(R);

    for(int i = 0; i < R; ++i)
        cin >> recital[i];

    sort(recital.begin(), recital.end());

    int minima = 1 << 30;
    do {
        int quickchange = 0;
        for(int i = 0; i < R - 1; ++i) {
            for(int idx = 0; idx < recital[i].size(); ++idx) {
                char c = recital[i][idx];
                bool found = false;
                for(int j = 0; j < recital[i+1].size(); ++j) {
                    char d = recital[i+1][j];
                    if(c == d)
                        found = true;
                }
                if(found)
                    quickchange += 1;
            }
        }
        minima = min(minima, quickchange);
    } while(next_permutation(recital.begin(), recital.end()));

    cout << minima << endl;

    return 0;
}

