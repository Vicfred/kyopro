-- Vicfred
-- https://atcoder.jp/contests/abc179/tasks/abc179_b
-- simulation
n = io.read("*n")

b = {}
d = {}
for i = 1, n do b[i], d[i] = io.read("*n", "*n") end

flag = false

for i = 1, n-2 do
   if b[i] == d[i] and
       b[i + 1] == d[i + 1] and
       b[i + 2] == d[i + 2] then
       flag = true
   end
end

if flag then
    print("Yes")
else
    print("No")
end

