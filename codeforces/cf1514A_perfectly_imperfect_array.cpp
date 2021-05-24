// Vicfred
// https://codeforces.com/contest/1514/problem/A
// math
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;

while(t--) {
    int n;
    cin >> n;

    vector<long long int> a(n);

    for(auto &item : a) {
        cin >> item;
    }

    const int maxn = 10001;
    vector<long long int> square(maxn);

    for(int i = 1; i*i < maxn; ++i) {
        square[i*i] = 1;
    }

    bool found = false;
    for(const auto& n : a) {
        if(square[n] == 0) {
            found = true;
            break;
        }
    }

    if(found) {
        cout << "YES" << endl;
    } else {
        cout << "NO" << endl;
    }
}
}

