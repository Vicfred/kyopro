# uninhm
# https://atcoder.jp/contests/abc186/tasks/abc186_c
# implementation

n = int(input())

ans = 0
for i in range(1, n+1):
    if '7' not in oct(i) and '7' not in str(i):
        ans += 1

print(ans)
