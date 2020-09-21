-- unihernandez22
-- https://atcoder.jp/contests/abc141/tasks/abc141_b
-- implementation

s = io.read()
ans = "Yes"

for i = 1, s:len(), 1 do
  if i % 2 == 1 and
       s:sub(i,i) ~= 'R' and s:sub(i,i) ~= 'U' and
       s:sub(i,i) ~= 'D' or 
     i % 2 == 0 and
       s:sub(i,i) ~= 'L' and s:sub(i,i) ~= 'U' and
       s:sub(i,i) ~= 'D' then
    ans = "No"
    break
  end
end

print(ans)
