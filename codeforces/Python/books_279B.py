# unihernandez22
# https://codeforces.com/contest/279/problem/B
# two pointers

n, t = map(int, input().split())
a = list(map(int, input().split()))

answer = 0

count = 0
suma = 0

i = 0
last = 0
while i < n:
    if suma + a[i] <= t:
        suma += a[i]
        count += 1
        i += 1
    else:
        answer = max(answer, count)
        suma -= a[last]
        count -= 1
        last += 1

answer = max(answer, count)
print(answer)
