// Martin
// https://codeforces.com/contest/41/problem/A
// implementation, reverse, strings

#include<iostream>
#include<algorithm>
#include<string>

using namespace std;

int main() {
    string s, t;
    cin >> s >> t;

    reverse(s.begin(), s.end());

    if (s == t) cout << "YES";
    else cout << "NO";

    return 0;
}
