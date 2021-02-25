// https://codeforces.com/contest/236/problem/A

#include<iostream>
#include<string>
#include<set>

using namespace std;

int main() {
    string username;
    cin >> username;

    set<char> s;
    for (auto c : username) s.insert(c);

    if (s.size() & 1) cout << "IGNORE HIM!" << endl;
    else cout << "CHAT WITH HER!" << endl;

    return 0;
}
