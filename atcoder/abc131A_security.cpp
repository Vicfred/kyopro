(* TsukiZombina
 * https://atcoder.jp/contests/abc131/tasks/abc131_a
 * implementation
 * *)

#include <iostream>
#include <string>

int main()
{
    std::string S;
    std::cin >> S;
    bool flag = 0;
    for (size_t i = 0; i < S.size() - 1; i++)
    {
        if (S[i] == S[i + 1]) {
            flag = 1;
            break;
        } else {
            continue;
        }  
    }

    if (flag) {
        std::cout << "Bad";
    } else {
        std::cout << "Good";
    }

    return 0;
}
