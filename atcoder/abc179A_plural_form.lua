-- vicfred
-- https://atcoder.jp/contests/abc179/tasks/abc179_a
-- string manipulation

s = io.read()
if s:sub(#s, #s) == "s" then
    print(s .. "es")
else
    print(s .. "s")
end

