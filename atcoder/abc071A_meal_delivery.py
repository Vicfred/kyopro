# Vicfred
# https://atcoder.jp/contests/abc071/tasks/abc071_a
# simulation
x, a, b = map(int, input().split())

if abs(x-a) < abs(x-b):
    print("A")
else:
    print("B")
