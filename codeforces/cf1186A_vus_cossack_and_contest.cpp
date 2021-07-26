// Martin
// https://codeforces.com/contest/1186/problem/A
// implementation, min

#include<iostream>
#include<algorithm>

using namespace std;

int main() {
    int n, m, k;
    cin >> n >> m >> k;

    auto min_value = min(m, k);

    if (min_value >= n) cout << "Yes";
    else cout << "No";

    return 0; 
}
