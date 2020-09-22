// https://codeforces.com/problemset/problem/71/A
#include<iostream>
#include<string>

int solve(std::string word) {
    return (word.end() - 1) - (word.begin() + 1);
}

int main() {
    int n;
    std::cin >> n;
    std::string current;
    while (n > 0) {
        std::cin >> current;
        if (current.length() > 10) {
            std::cout << current.at(0) << solve(current) << current.back() << std::endl;
        } else {
            std::cout << current << std::endl;
        }
        n--;
    }
    return 0;
}
