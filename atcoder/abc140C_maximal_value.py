# uninhm
# https://atcoder.jp/contests/abc140/tasks/abc140_c
# greedy

n = int(input())
b = list(map(int, input().split()))

ans = b[0]
for i in range(n-2):
    ans += min(b[i], b[i+1])

ans += b[-1]
print(ans)
