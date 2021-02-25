// https://codeforces.com/contest/791/problem/A

#include<iostream>

int main() {
    int a, b, years {0};
    std::cin >> a >> b;

    while (b >= a) {
        b *= 2, a *= 3;
        years++;
    }
    std::cout << years;
    return 0;
}
