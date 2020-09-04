-- unihernandez22
-- https://atcoder.jp/contests/abc129/tasks/abc129_a
-- implementation

p, q, r = io.read("*n", "*n", "*n")

print(math.min(p+q, p+r, q+r))
