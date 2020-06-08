# Vicfred
# https://atcoder.jp/contests/abc050/tasks/abc050_a
# simulation
A, op, B = input().split()

A = int(A)
B = int(B)

answer = 0
if op == '+':
    answer = A+B
else:
    answer = A-B

print(answer)

