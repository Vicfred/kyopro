# unihernandez22
# https://atcoder.jp/contests/abc178/tasks/abc178_b
# implementation

a, b, c, d = map(int, input().split())

print(max(a * c, b * d, b * c, a * d))
