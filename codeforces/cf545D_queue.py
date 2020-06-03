# unihernandez22
# https://codeforces.com/problemset/problem/545/D
# greedy

input()
a = list(sorted(map(int, input().split())))
b = set(a)
t = []

for i in b:
    if a.count(i) > 1:
        t += [i, i]
    else:
        t += [i]

i = 0
suma = 0
while i < len(t) and len(t) > 0:
    if suma > t[i]:
        t.pop(i)
    else:
        suma += t[i]
        i += 1

print(len(t))
