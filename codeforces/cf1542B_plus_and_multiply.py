# uninhm
# https://codeforces.com/contest/1542/problem/B
# modulo, greedy

for _ in range(int(input())):
    n, a, b = map(int, input().split())
    m = n%b
    if a == 1:
        if (n-1)%b == 0:
            print("Yes")
        else:
            print("No")
        continue
    x = 1
    while x <= n:
        if (x%b) == m:
            print("Yes")
            break
        x *= a
    else:
        print("No")

