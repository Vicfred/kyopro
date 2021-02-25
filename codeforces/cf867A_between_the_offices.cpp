// https://codeforces.com/contest/867/problem/A

#include<iostream>
#include<string>

using namespace std;

int cnt(string days, string sub) {
    size_t pos = 0;
    int count = 0;
    while ((pos = days.find(sub, pos)) != string::npos) {
        count++;
        pos += sub.size();
    }
    return count;
}

int main() {
    int n_days;
    string days;
    cin >> n_days >> days;

    string fs = "FS", sf = "SF";
    int s = cnt(days, sf);
    int f = cnt(days, fs);

    if (s > f) cout << "YES" << endl;
    else cout << "NO" << endl;

    return 0;
}
