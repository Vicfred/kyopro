// Martin
// https://codeforces.com/contest/1367/problem/A
// implementation

#include<iostream>

int substract(int value) {
    if (value % 10 != 0) {
        value -= 1;
    } else {
        value /= 10;
    }
    return value;
}

int main() {
    int n, k, last;
    std::cin >> n >> k;

    while (k--) {
        n = substract(n);
    }
    std::cout << n;
    return 0;
}
