# uninhm
# https://atcoder.jp/contests/abc165/tasks/abc165_c
# dfs, brute force
n, m, q = map(int, input().split())

a = []
b = []
c = []
d = []

for _ in range(q):
    ins = list(map(int, input().split()))
    a.append(ins[0])
    b.append(ins[1])
    c.append(ins[2])
    d.append(ins[3])
 
A = [[i] for i in range(1, m+1)]
 
while len(A[0]) != n:
    current = A.pop(0)
    for i in range(current[-1], m+1):
        A.append(current+[i])
 
maxima = 0
for item in A:
    accumulate = 0
    for i in range(q):
        if (item[b[i]-1] - item[a[i]-1]) == c[i]:
            accumulate += d[i]
    maxima = max(maxima, accumulate)

print(maxima)
