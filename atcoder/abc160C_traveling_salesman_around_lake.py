# uninhm
# https://atcoder.jp/contests/abc160/tasks/abc160_c
# greedy
k, n = map(int, input().split())
a = list(map(int, input().split()))

ans = 0
max_dif = 0
for i in list(range(1, n)):
	x = abs(a[i] - a[i-1])
	max_dif = max(max_dif, x)
	ans += x

ans += k-a[-1]+a[0]
max_dif = max(max_dif, k-a[-1]+a[0])
ans -= max_dif
print(ans)

