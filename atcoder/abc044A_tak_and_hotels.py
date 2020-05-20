# Vicfred
# https://atcoder.jp/contests/abc044/tasks/abc044_a
# simulation
n = int(input())
k = int(input())
x = int(input())
y = int(input())

total = 0

for night in range(1,n+1):
    if night <= k:
        total += x
    else:
        total += y

print(total)

