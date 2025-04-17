// vicfred
// https://codingcompetitions.withgoogle.com/codejam/round/0000000000876ff1/0000000000a4621b
// implementation
#include <iostream>

using namespace std;

int main() {
    int t;
    cin >> t;
for(int kase = 1; kase <= t; ++kase) {
    int r, c;
    cin >> r >> c;
    cout << "Case #" << kase << ":\n";
    cout << "..";
    for(int i = 1; i <= c - 1; ++i) {
        cout << "+-";
    } cout << "+\n";
    cout << "..";
    for(int i = 1; i <= c - 1; ++i) {
        cout << "|.";
    } cout << "|\n";
    string pattern1 = "";
    for(int i = 1; i <= c; ++i) {
        pattern1 += "+-";
    }
    pattern1 += "+";
    string pattern2 = "";
    for(int i = 1; i <= c; ++i) {
        pattern2 += "|.";
    }
    pattern2 += "|";
    for(int i = 1; i <= r - 1; ++i) {
        cout << pattern1 << endl;
        cout << pattern2 << endl;
    }
    cout << pattern1 << endl;
}
    return 0;
}
