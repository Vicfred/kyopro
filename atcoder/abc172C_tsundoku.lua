-- uninhm
-- https://atcoder.jp/contests/abc172/tasks/abc172_c
-- greedy

N, M, K = io.read("*n","*n","*n")
A = {}; for i = 1, N do A[i] = io.read("*n") end
B = {}; for i = 1, M do B[i] = io.read("*n") end

a = {}; a[0] = 0
for i = 1, N do a[i] = a[i-1] + A[i] end

b = {}; b[0] = 0
for i = 1, M do b[i] = b[i-1] + B[i] end

ans, j = 0, M
for i = 0, N do
  if a[i] > K then break end
  while b[j] > K - a[i] do j = j - 1 end
  ans = math.max(ans, i + j)
end

print(ans)
