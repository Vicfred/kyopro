// Vicfred
// https://codeforces.com/blog/entry/88812
// greedy
#include <algorithm>
#include <iostream>

using namespace std;

int main() {
    int t;
    cin >> t;

while(t--) {
    string s;
    cin >> s;

    int i = s.find("11");
    int j = s.rfind("00");

    cout << (i != -1 && j != -1 && i < j ? "NO" : "YES") << endl;
}
    return 0;
}
