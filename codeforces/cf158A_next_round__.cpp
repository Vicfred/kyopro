// https://codeforces.com/problemset/problem/158/A

#include<iostream>
#include<vector>

using namespace std;

int main() {
    int n, k;
    cin >> n >> k;

    vector<int> scores;

    int value;
    for (int i = 0; i < n; i++) {
        cin >> value;
        scores.push_back(value);
    }

    int min = scores[k - 1];
    int sum = 0;
    for (int i = 0; i < n; i++) {
        int score = scores.at(i);
        if (score >= min && score > 0) sum += 1;
    }

    cout << sum << std::endl;
    return 0;
}
