# Vicfred
# https://atcoder.jp/contests/abc390/tasks/abc390_b
# math, implementation
import sys

N = int(input())
# print(N)
A = list(map(int, input().split()))
#print(A)
if len(A) <= 2:
    print("Yes")
    sys.exit()
ratio = A[1] / A[0]
valid = True
#print("ratio:", ratio)
for x in range (len(A) - 2):
    if A[x] * A[x + 2] != A[x + 1] * A[x + 1]:
        valid = False
        #print("failed", A[x] * ratio, A[x + 1])
        break
if valid:
    print("Yes")
else:
    print("No")
