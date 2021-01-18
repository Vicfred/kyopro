-- uninhm
-- https://atcoder.jp/contests/abc149/tasks/abc149_c
-- eratosthenes sieve

x = io.read("*n")

not_prime = {true}

for i = 2, 10 ^ 6 do
  if not_prime[i] == nil then
    if i >= x then
      print(i)
      break
    end
    cur = i * 2
    while cur < 10 ^ 6 do
      not_prime[cur] = true
      cur = cur + i
    end
  end
end
