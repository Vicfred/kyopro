// https://codeforces.com/problemset/problem/520/A

#include<iostream>
#include<algorithm>
#include<string>

using namespace std;

int main() {
    int n;
    string phrase;
    string alphabet {"abcdefghijklmnopqrstuvwxyz"};

    cin >> n >> phrase;

    if (phrase.length() < alphabet.length()) {
        cout << "NO";
        return 0;
    }

    transform(phrase.begin(), phrase.end(), phrase.begin(), ::tolower);

    bool flag = true;
    for (auto letter : alphabet) {
        if (phrase.find(letter) == string::npos) {  // letter not found.
            flag = false;
            break;
        }
    }

    if (flag) cout << "YES";
    else cout << "NO";

    return 0;
}
