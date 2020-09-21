-- Vicfred
-- https://atcoder.jp/contests/abc125/tasks/abc125_b
-- greedy
n = io.read("*n")
v, c = {}, {}
for i = 1, n do v[i] = io.read("*n") end
for i = 1, n do c[i] = io.read("*n") end
ans = 0
for i = 1, n do
    if(c[i] < v[i]) then
        ans = ans + v[i] - c[i]
    end
end
print(ans)

