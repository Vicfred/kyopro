// TsukiZombina
// https://codeforces.com/contest/1405/problem/A
// math

#include <iostream>
#include <algorithm>
#include <vector>

int main()
{
    int t;
    std::cin >> t;
    for (int i = 0; i < t; i++)
    {
        int n;
        std::cin >> n;
        std::vector<int> p(n);
        for (auto& x : p)
        {
            std::cin >> x;
        }
        std::reverse(p.begin(), p.end());
        for (const auto& x : p)
        {
            std::cout << x << " ";
        }
        std::cout << std::endl;
        
    }
    return 0;
}