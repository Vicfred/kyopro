# uninhm
# https://atcoder.jp/contests/abc214/tasks/abc214_b
# brute force

s, t = map(int, input().split())

ans = 0
for a in range(s+1):
    for b in range(s+1):
        for c in range(s+1):
            if a+b+c <= s and a*b*c <= t:
                ans += 1

print(ans)
