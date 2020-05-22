# unihernandez22
# https://atcoder.jp/contests/abc165/tasks/abc165_b
# simulation
x = int(input())

count = 0
n = 100
while x > n:
    n = int(n * 1.01)
    count += 1

print(count)
