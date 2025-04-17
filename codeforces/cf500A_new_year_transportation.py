# vicfred
# https://codeforces.com/problemset/problem/500/A
# implementation
n, t = map(int, input().split())
a = list(map(int, input().split()))

current = 0

while current < t and current != t-1:
    current += a[current]

if current == t-1:
    print("YES")
else:
    print("NO")
