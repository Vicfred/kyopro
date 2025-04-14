# uninhm
# https://atcoder.jp/contests/abc264/tasks/abc264_d
# greedy

s = list(input())

c = 0
for l in "atcoder":
    c += s.index(l)
    s.remove(l)
print(c)
