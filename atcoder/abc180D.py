# uninhm
# https://atcoder.jp/contests/abc180/tasks/abc180_d
# greedy

x, y, a, b = map(int, input().split())

EXP = 0

while x*a < y and x*a < x+b:
    x *= a
    EXP -=- 1

print(EXP + (y-x-1)//b)
