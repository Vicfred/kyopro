# unihernandez22
# https://atcoder.jp/contests/abc158/tasks/abc158_b
# math
n, a, b = map(int, input().split())
print(n // (a + b) * a + min(a, n%(a+b)))
