// https://codeforces.com/contest/467/problem/A

#include<iostream>

int main() {
    int n, p, q, count {0};
    std::cin >> n;
    while(n--) {
        std::cin >> p >> q;
        if (q - p >= 2) count++;
    }
    std::cout << count;
    return 0;
}
