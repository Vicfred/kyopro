# uninhm
# https://atcoder.jp/contests/abc243/tasks/abc243_d
# input preprocessing

n, x = map(int, input().split())
s = input()

s2 = list()
for c in s:
    if len(s2) != 0 and\
       (s2[-1] != 'U' and c == 'U'):
        s2.pop()
    else:
        s2.append(c)

for c in s2:
    if c == 'U':
        x //= 2
    elif c == 'L':
        x *= 2
    elif c == 'R':
        x *= 2
        x += 1

print(x)
