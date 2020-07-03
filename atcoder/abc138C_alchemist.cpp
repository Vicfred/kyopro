// TsukiZombina
// https://atcoder.jp/contests/abc138/tasks/abc138_c
// sorting, greedy

#include <iostream>
#include <vector>
#include <algorithm>

int main() {
    int N;
    float number = 0, mix;
    std::cin >> N;
    std::vector<int> numbers(N);
    for(auto& x: numbers)
    {
        std::cin >> x;
    }

    std::sort(numbers.begin(), numbers.end());
     
    mix = numbers[0];
    for (const auto& number: numbers) {
        mix = (mix + number)/2;
    }
    std::cout << mix;
    return 0;
}
