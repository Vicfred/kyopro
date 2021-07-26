// Martin
// https://codeforces.com/contest/1487/problem/A
// implementation, sorting

#include<iostream>
#include<algorithm>
#include<vector>

using namespace std;

int main() {
    int t, n;
    cin >> t;

    while (t--) {
        cin >> n;
        vector<int> values(n);
        for (auto& it : values) cin >> it;

        sort(values.begin(), values.end(), [] (const int& a, const int& b) { return a > b; });  // reverse sort

        int answer {0};
        int last = values.back();
        for (unsigned int i = 0; i < values.size() - 1; i++) {
            if (values[i] > last) answer++;
        }
        cout << answer << endl;
    }
    return 0;
}
