# uninhm
# https://atcoder.jp/contests/abc245/tasks/abc245_c
# implementation

n, k = map(int, input().split())
a = list(map(int, input().split()))
b = list(map(int, input().split()))

lasts = [a[0], b[0]]
for i in range(n):
    flaga = False
    flagb = False
    for elem in lasts:
        if abs(elem - a[i]) <= k:
            flaga = True
        if abs(elem - b[i]) <= k:
            flagb = True
    if not (flaga or flagb):
        print('No')
        exit()
    lasts = []
    if flaga: lasts.append(a[i])
    if flagb: lasts.append(b[i])

print('Yes')
