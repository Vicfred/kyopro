// https://codeforces.com/problemset/problem/705/A

#include<iostream>

int main() {
    int n;
    std::cin >> n;
    if (n == 1) {
           std::cout << "I hate it";
    } else {
        for (int i = 1; i < n; i++) {
            if (i & 1) std::cout << "I hate that "; 
            else std::cout << "I love that "; 
        }
        if (n & 1) std::cout << "I hate it"; 
        else std::cout << "I love it"; 
    }
    return 0;
}
