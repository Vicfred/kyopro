-- Vicfred
-- https://atcoder.jp/contests/abc179/tasks/abc179_c
-- math, combinatorics
n = io.read("*n")

ans = 0

for a = 1, n-1 do
    ans = ans + (n - 1) // a
end

print(ans)

