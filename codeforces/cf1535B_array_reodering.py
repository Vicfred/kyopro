# uninhm
# https://codeforces.com/contest/1535/problem/B
# greedy

from math import gcd

t = int(input())

for i in range(t):
    n = int(input())
    a = list(map(int, input().split()))
    a = list(filter(lambda x: x%2==0, a)) + list(filter(lambda x: x%2==1, a))

    ans = 0
    for i in range(n):
        for j in range(i+1, n):
            if gcd(a[i], 2*a[j]) > 1:
                ans += 1
    print(ans)
