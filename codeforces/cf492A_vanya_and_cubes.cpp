// Martin
// https://codeforces.com/contest/492/problem/A
// implementation

#include<iostream>

using namespace std;

int main() {
    int n, height {0}, acc {0};
    cin >> n;

    int i {2}, t {1};
    while (n >= acc + t) {
        acc += t;
        t += i;
        i++;

        height++;
    }

    cout << height << endl;

    return 0; 
}
