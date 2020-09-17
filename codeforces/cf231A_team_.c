// https://codeforces.com/problemset/problem/231/A
#include<stdio.h>

int main() {
    int n;
    int petya = 0, vasya = 0, tonya = 0;
    int amount = 0;

    scanf("%d", &n);

    while (n > 0) {
        scanf("%d %d %d", &petya, &vasya, &tonya);
        if (petya + vasya + tonya > 1)
            amount += 1;
        n--;
    }
    printf("%d\n", amount);
    return 0;
}
