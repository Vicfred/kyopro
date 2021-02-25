// https://codeforces.com/problemset/problem/677/A

#include<iostream>

int main() {
    int n, h;
    std::cin >> n >> h;
    int height, answer {0};
    while (n--) {
        std::cin >> height;
        if (height > h) answer += 2;
        else answer++;
    }
    std::cout << answer;
    return 0;
}
