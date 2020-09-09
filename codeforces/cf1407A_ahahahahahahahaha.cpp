// Vicfred
// https://codeforces.com/contest/1407/problem/A
// math, greedy, implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;

    while(t--) {
        int n;
        cin >> n;

        vector<int> a(n);
        for(auto &item: a)
            cin >> item;

        int zero, one;
        zero = one = 0;

        for(auto item: a) {
            if(item == 0)
                zero += 1;
            else
                one += 1;
        }

        if(one <= n/2) {
            cout << zero << endl;
            for(int i = 0; i < zero; i++)
                cout << 0 << " ";
            cout << endl;
            continue;
        }

        if(one%2 != 0)
            one -= 1;
        cout << one << endl;
        for(int i = 0; i < one; i++)
            cout << 1 << " ";
        cout << endl;
    }

    return 0;
}

