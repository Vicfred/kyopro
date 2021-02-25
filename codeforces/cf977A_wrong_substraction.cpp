// Martin
// https://codeforces.com/contest/977/problem/A
// implementation

#include<iostream>
#include<string>

int main() {
    std::string n;
    int k, last;
    std::cin >> n >> k;

    while (k--) {
        last = std::stoi(&n.back());  // str.back returns a reference.
        n.pop_back();  // Remove last digit (assuming last digit is 0).
        if (last != 0) {
            n = n + std::to_string(last - 1);  // recover last digit with Tanya rules.
        }
    }
    std::cout << n;
    return 0;
}
