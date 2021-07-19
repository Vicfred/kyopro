# uninhm
# https://atcoder.jp/contests/abc210/tasks/abc210_b
# implementation

from collections import Counter

n, k = map(int, input().split())
c = list(map(int, input().split()))

s = Counter(c[:k])
ans = len(s)
for i in range(n-k):
    s[c[i]] -= 1
    if s[c[i]] <= 0:
        s.pop(c[i], None)
    s[c[i+k]] += 1
    ans = max(ans, len(s))

print(ans)
