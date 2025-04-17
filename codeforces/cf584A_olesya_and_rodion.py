# vicfred
# https://codeforces.com/problemset/problem/584/A
# implementation

n, t = map(int, input().split())

found = False
for i in range(10**(n-1), 10**n):
    if i%t == 0:
        print(i)
        found = True
        break

if not found:
    print(-1)

