# vicfred
# https://atcoder.jp/contests/abc132/tasks/abc132_b
# implementation
n = int(input())
p = list(map(int,input().split()))

answer = 0
for i in range(1, n-1):
    if p[i-1] < p[i] < p[i+1] or p[i-1] > p[i] > p[i+1]:
        answer += 1

print(answer)

