-- vicfred
-- https://atcoder.jp/contests/abc178/tasks/abc178_b
-- math

a, b, c, d = io.read("*n", "*n", "*n", "*n")

maxima = c*b
maxima = math.max(maxima, d*b)
maxima = math.max(maxima, c*a)
maxima = math.max(maxima, a*d)

print(maxima)

