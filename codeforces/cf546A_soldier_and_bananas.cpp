// https://codeforces.com/contest/546/problem/A

#include<iostream>

int solve(int cost, int money, int amount) {
    int i {1};
    int acc = 0;

    for (int i = 1; i <= amount; i++) acc += i * cost;

    int answer = acc - money;

    return (answer < 0) ? 0 : answer;
}

int main() {
    int k, n, w;
    std::cin >> k >> n >> w;

    std::cout << solve(k, n, w);
    return 0;
}
