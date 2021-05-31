// https://atcoder.jp/contests/abc154/tasks/abc154_d
#include<iostream>
#include<numeric>
#include<iomanip>
#include<vector>

using namespace std;

int main() {
    int n, k;
    cin >> n >> k;
    vector<int> max_values(n);
    for (auto &it : max_values) cin >> it;

    vector<int> legit(k);
    long long max = 0;
    for (int i = 0; i + k <= n; i++) {
        auto begining = max_values.begin() + i;
        long long current = accumulate(begining, begining+k, 0);
        if (current > max) {
            legit = {begining, begining+k};
            max = current;
        }
    }

    long double sum = 0.0L;
    for (auto v : legit) {
        double factor = 1.0L / v;
        sum += (((v + 1.0L) * v) / 2L) * factor;
    }
    cout << setprecision(15) << sum <<endl;
    return 0;
}
