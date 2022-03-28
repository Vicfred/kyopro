n, m = map(int, input().split())
a = list(map(int, input().split()))
c = list(map(int, input().split()))

b = [0] * (m+1)
bi = m
for i in range(len(c)-1, n-1, -1):
    b[bi] = c[i]//a[-1]
    for j in range(len(a)):
        c[i-j] -= a[-j-1] * b[bi]
    bi -= 1

print(*b)
