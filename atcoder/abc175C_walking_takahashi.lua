-- uninhm
-- https://atcoder.jp/contests/abc175/tasks/abc175_c
-- math

x, k, d = io.read("*n","*n","*n")

x = math.abs(x)

if math.abs(x) // d >= k then
  print(math.abs(x) - k*d)
elseif (k - x // d) % 2 == 0 then
  print(math.abs(x - x // d * d))
else
  print(math.min(math.abs(x - x // d * d - d), math.abs(x - x // d * d + d)))
end
