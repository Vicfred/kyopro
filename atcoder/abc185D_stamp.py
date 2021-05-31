# uninhm
# https://atcoder.jp/contests/abc185/tasks/abc185_d
# greedy

n, m = map(int, input().split())
a = list(map(int, input().split()))
a.sort()
a.append(n+1)

k = 1 << 30
last = 0
for i in a:
    if i <= last+1:
        last = i
        continue
    k = max(1, min(i - last - 1, k))
    last = i


from math import ceil

ans = 0
last = 0
for i in a:
    if i <= last+1:
        last = i
        continue
    ans += ceil((i - last - 1) / k)
    last = i

print(ans)
