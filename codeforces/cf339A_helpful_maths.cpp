// https://codeforces.com/contest/339/problem/A

#include<iostream>
#include<algorithm>
#include<vector>

int main() {
    char c;
    std::vector<int> numbers;

    while (std::cin.get(c) && c != '\n') {
        if (c != '+') numbers.push_back((int)c - '0');
    }

    std::sort(begin(numbers), end(numbers));

    for (unsigned int i = 0; i < numbers.size(); i++)
        std::cout << numbers[i] << ((i < numbers.size() - 1) ? "+" : "");

    return 0;
}
