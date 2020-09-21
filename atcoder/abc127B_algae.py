# unihernandez22
# https://atcoder.jp/contests/abc127/tasks/abc127_b
# implementation

r, d, x = map(int, input().split())

for _ in range(10):
    x = r*x-d
    print(x)
