// https://codeforces.com/contest/1030/problem/A

#include<iostream>

using namespace std;

int main() {
    int n, tmp;
    cin >> n;
    bool is_easy = true;
    while (n--) {
        cin >> tmp;
        if (tmp == 1) is_easy = false;
    }
    if (is_easy) cout << "EASY";
    else cout << "HARD";

    return 0;
}
