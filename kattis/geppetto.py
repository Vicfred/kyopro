# Vicfred
# https://open.kattis.com/problems/geppetto
# brute force, bitmask
N, M = map(int, input().split())

a = [0]*M
b = [0]*M

for i in range(M):
    x, y = map(int, input().split())
    a[i] = x-1
    b[i] = y-1

ans = 0
for mask in range(1<<N):
    flag = True
    
    for i in range(M):
        if mask & (1 << a[i]) and mask & (1 << b[i]):
            flag = False
            break

    if flag:
        ans += 1

print(ans)

