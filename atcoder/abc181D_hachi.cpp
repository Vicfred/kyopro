// vicfred
// https://atcoder.jp/contests/abc181/tasks/abc181_d
// greedy, string manipulation, math
#include <algorithm>
#include <iostream>
#include <string>
#include <vector>
#include <map>

using namespace std;

int main() {
    string S;
    cin >> S;

    sort(begin(S), end(S));

    if(S.size() < 3) {
        do {
            if(stoi(S)%8 == 0) {
                cout << "Yes" << endl;
                return 0;
            }
        } while(next_permutation(begin(S), end(S)));

        cout << "No" << endl;
        return 0;
    }

    vector<string> multiples;

    for(int i = 1; i*8 <= 999; i++) {
        if(i*8 >= 100 && i*8 <= 999)
            multiples.push_back(to_string(i*8));
    }

    map<char, int> counter;
    for(char c: S)
        counter[c] += 1;

    for(string multiple: multiples) {
        bool valid = true;
        for(char c = '0'; c <= '9'; c++) {
            if(count(begin(multiple), end(multiple), c) >
               counter[c]) {
                valid = false;
            }
        }

        if(valid) {
            cout << "Yes" << endl;
            return 0;
        }
    }

    cout << "No" << endl;

    return 0;
}

