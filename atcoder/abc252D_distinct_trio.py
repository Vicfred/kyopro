# uninhm
# https://atcoder.jp/contests/abc252/submissions/32065366
# combinatorics

from collections import Counter

n = int(input())
c = Counter(map(int, input().split()))

ans = n*(n-1)*(n-2)//6
ans -= sum(x*(x-1)*(n-x)//2 for x in c.values())
ans -= sum(x*(x-1)*(x-2)//6 for x in c.values())
print(ans)
