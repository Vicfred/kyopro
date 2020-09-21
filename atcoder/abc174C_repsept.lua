-- unihernandez22
-- https://atcoder.jp/contests/abc174/tasks/abc174_c
-- simulation

k = io.read("*n")

if k % 2 == 0 then
  print(-1)
  return
end

sevens = 7
step = 1

while sevens % k ~= 0 do
  if step > 10 ^ 6 then
    step = -1
    break
  end

  sevens = sevens * 10 + 7
  sevens = sevens % k
  step = step + 1
end

print(step)
