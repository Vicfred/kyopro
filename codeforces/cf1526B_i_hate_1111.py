# uninhm
# https://codeforces.com/contest/1526/problem/B
# greedy

t = int(input())

for _ in range(t):
    n = int(input())
    if n >= 1110 or 111*(n%11) <= n:
        print("YES")
    else:
        print("NO")
