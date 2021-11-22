-- Vicfred
-- https://atcoder.jp/contests/abc081/tasks/abc081_a
-- implementation

s = io.read()
ans = 0
for i = 1, 3 do
    if s:sub(i,i) == '1' then
        ans = ans + 1
    end
end
print(ans)
