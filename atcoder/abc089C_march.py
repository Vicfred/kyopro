# uninhm
# https://atcoder.jp/contests/abc089/tasks/abc089_c
# combinatorics, semi-brute force

from collections import Counter

n = int(input())
s = [input() for _ in range(n)]

c = Counter()

for name in s:
    c[name[0]] += 1

march = 'MARCH'

ans = 0
for i in range(len(march)):
    for j in range(i+1, len(march)):
        for k in range(j+1, len(march)):
            ans += c[march[i]] * c[march[j]] * c[march[k]]

print(ans)
