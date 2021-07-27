# uninhm
# https://codeforces.com/contest/1526/problem/A
# greedy

t = int(input())

for _ in range(t):
    n = int(input())
    a = list(map(int, input().split()))
    a.sort()
    b = []
    for i in range(n):
        b.append(a[i])
        b.append(a[i+n])
    print(*b)
