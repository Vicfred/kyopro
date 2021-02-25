// https://codeforces.com/contest/155/problem/A

#include<iostream>

using namespace std;

int main() {
    int n;
    cin >> n;

    int value;
    cin >> value;
    int min = value, max = value;
    int amazing {0};
    while (n > 1) {
        cin >> value;
        if (value > max) {
            max = value;
            amazing++;
        } else if (value < min) {
            min = value;
            amazing++;
        }
        n--;
    }
    cout << amazing << endl;

    return 0;
}
