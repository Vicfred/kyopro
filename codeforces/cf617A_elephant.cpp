// https://codeforces.com/contest/617/problem/A

#include<iostream>

using namespace std;

int solve(int x) {
    if (x < 5) return 1;
    int result = (int)x / 5;
    if (x % 5 > 0) result++;
    return result;
}

int main() {
    int x;
    cin >> x;
    cout << solve(x) << endl;
    return 0;
}
