// https://codeforces.com/problemset/problem/282/A
#include<stdio.h>
#include<string.h>

int main() {
    int n;
    int count = 0;
    scanf("%d\n", &n);

    char line[256];
    while (n > 0) {
        fgets(line, sizeof(line), stdin);

        if (strstr(line, "++")) count++;
        else count--;

        n--;
    }

    printf("%d", count);
    return 0;
}
