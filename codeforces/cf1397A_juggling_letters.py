# unihernandez22
# https://codeforces.com/contest/1397/problem/A
# implementation

from collections import Counter

t = int(input())

for _ in range(t):
    n = int(input())
    c = Counter()
    for _ in range(n):
        c += Counter(input())
    ans = "YES"
    for i in c:
        if c[i] % n != 0:
            ans = "NO"
            break
    print(ans)
