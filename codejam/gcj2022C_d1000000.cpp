// Vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a46471
// greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;
for(int kase = 1; kase <= t; ++kase) {
    int n;
    cin >> n;
    vector<int> die(n);
    for(int i = 0; i < n; ++i) {
        cin >> die[i];
    }
    sort(die.begin(), die.end());
    // for(int i = 0; i < n; ++i) {
    //     cout << die[i] << " ";
    // } cout << endl;

    int length = 0;
    for(int i = 0; i < n; ++i) {
        if(die[i] > length) {
            length += 1;
        }
    }
    cout << "Case #" << kase << ": " << length << endl;
}
}
