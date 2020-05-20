# requires python >= 3.8

n, k = map(int, input().split())
A = list(map(int, input().split()))

seen = {1: 0}
a = 1

for i in range(1, n+1):
  if seen.setdefault(a:=A[a-1], i) != i:
    break

p = seen[a]             # cycle offset
q = i - seen[a]         # cycle length

if k >= p+q:
  k = (k - p) % q + p

a = 1
for i in range(k):
  a = A[a-1]

print(a)

