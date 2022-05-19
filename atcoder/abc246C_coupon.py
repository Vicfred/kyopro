# uninhm
# https://atcoder.jp/contests/abc246/tesks/abc246_c
# implementation

n, k, x = map(int, input().split())

a = list(map(int, input().split()))

for i, e in enumerate(a):
    c = e//x
    a[i] -= min(c, k) * x
    k = max(k-c, 0)

if k > 0:
    a.sort(key=lambda x: -x)
    for i in range(k):
        if i >= len(a): break
        a[i] = 0

print(sum(a))
