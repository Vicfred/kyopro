// https://codeforces.com/contest/734/problem/A

#include<iostream>
#include<algorithm>
#include<string>

using namespace std;

int main() {
    int n;
    string wins;
    cin >> n >> wins;
    
    int a_wins = count(wins.begin(), wins.end(), 'A');
    int d_wins = count(wins.begin(), wins.end(), 'D');

    if (a_wins > d_wins) cout << "Anton";
    else if (d_wins > a_wins) cout << "Danik";
    else cout << "Friendship";

    return 0;
}
