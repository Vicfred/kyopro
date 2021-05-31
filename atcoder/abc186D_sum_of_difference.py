# uninhm
# https://atcoder.jp/contests/abc186/tasks/abc186_d
# greedy, cumulative sum

n = int(input())
a = list(map(int, input().split()))
a.sort()

cum = [0]*n
for i in range(n-2, -1, -1):
    cum[i] = cum[i+1] + a[i+1]

ans = 0
for i in range(n):
    ans += cum[i] - a[i]*(n-i-1)

print(ans)
