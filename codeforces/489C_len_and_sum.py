# unihernandez22
# https://codeforces.com/problemset/problem/489/C
# greedy, implementation

l, s = map(int, input().split())

if s > l*9 or s == 0 and l != 1:
	print(-1, -1)
elif s == 0 and l == 1:
	print(0, 0)
else:
	maximo = []
	while sum(maximo) + 9 < s:
		maximo += [9]
	maximo += [s-sum(maximo)]

	for _ in range(l-len(maximo)):
		maximo += [0]

	minimo = maximo[::-1]
	if 0 in minimo:
		minimo[0] = 1
		for i in range(1, len(minimo)):
			if minimo[i] != 0:
				minimo[i] -= 1
				break
	print(''.join(map(str, minimo)), ''.join(map(str, maximo)))
