// https://codeforces.com/contest/136/problem/A

#include<iostream>

int main() {
    int n;
    std::cin >> n;

    int gifts[n];
    int friends[n];
    int tmp;

    for (int i = 0; i < n; i++) {
        std::cin >> tmp;
        gifts[i] = tmp - 1;
    }

    for (int i = 0; i < n; i++) friends[gifts[i]] = i;

    for (int i = 0; i < n; i++) {
        std::cout << (friends[i] + 1) << " ";
    }

    std::cout << std::endl;
    return 0;
}
