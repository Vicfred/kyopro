// https://atcoder.jp/contests/abc164/tasks/abc164_b
#include<iostream>

int main() {
    int a_health, a_strenght, b_health, b_strenght;
    std::cin >> a_health >> a_strenght >> b_health >> b_strenght;

    int i = 2;
    while (a_health > 0 && b_health > 0) {
        if (i % 2 == 0) b_health -= a_strenght;
        else a_health -= b_strenght;

        i++;
    }

    if (a_health < 1) std::cout << "No";
    else std::cout << "Yes";

    return 0;
}
