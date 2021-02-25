// https://codeforces.com/problemset/problem/266/A

#include<iostream>

int main() {
    int n, counter {0};
    std::string s;

    std::cin >> n >> s;

    for (unsigned int i = 1; i < s.length(); i++) {
        if (s[i] == s[i - 1]) counter++;
    }

    std::cout << counter;

    return 0;
}
