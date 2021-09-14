# uninhm
# https://codeforces.com/contest/1542/submission/128687396
# modulo, implementation

from collections import Counter

for _ in range(int(input())):
    n = int(input())
    c = Counter(map(lambda x: int(x)%2, input().split()))
    if c[0] == n:
        print("Yes")
    else:
        print("No")
