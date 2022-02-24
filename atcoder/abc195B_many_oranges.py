# uninhm
# https://atcoder.jp/contests/abc195/tasks/abc195_b
# greedy

a, b, w = map(int, input().split())
w *= 1000

min_ = (w+b-1)//b
max_ = w//a

if max_ < min_:
    print("UNSATISFIABLE")
else:
    print(min_, max_)
