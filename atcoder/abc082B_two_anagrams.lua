-- Vicfred
-- https://atcoder.jp/contests/abc082/tasks/abc082_b
-- greedy, sorting

s = io.read()
t = io.read()
a_anagram = {}
for i = 1, #s do
    a_anagram[i] = s:sub(i, i)
end
b_anagram = {}
for i = 1, #t do
    b_anagram[i] = t:sub(i, i)
end
table.sort(a_anagram)
table.sort(b_anagram, function(x, y) return x > y end)
s = table.concat(a_anagram)
t = table.concat(b_anagram)
print(s < t and "Yes" or "No")
