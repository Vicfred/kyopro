# uninhm
# https://atcoder.jp/contests/abc404/tasks/abc404_e
# greedy

n = int(input())
c = [0] + [int(i) for i in input().split()]
a = [0] + [int(i) for i in input().split()]

maxDist = [1]*n

for i in range(n):
    for j in range(1, c[i]+1):
        maxDist[i-j] = i
        if a[i-j] != 0:
            break

i = 0
ans = 0
while i < len(a):
    next = i+1
    while next < len(a) and a[next] == 0:
        next += 1
    if next == len(a): break
    while i < next:
        ans += 1
        i = maxDist[i]
    i = next

print(ans)
