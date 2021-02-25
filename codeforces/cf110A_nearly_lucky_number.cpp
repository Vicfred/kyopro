// https://codeforces.com/contest/110/problem/A

#include<iostream>
#include<algorithm>
#include<string>

using namespace std;

int main() {
    string number;
    cin >> number;

    auto four_cnt = count(number.begin(), number.end(), '4');
    auto seven_cnt = count(number.begin(), number.end(), '7');

    long unsigned int total = four_cnt + seven_cnt;

    if (total == (long unsigned int) 7 || total == (long unsigned int) 4) cout << "YES";
    else cout << "NO";

    return 0;
}
