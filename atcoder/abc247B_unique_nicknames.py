# uninhm
# https://atcoder.jp/contests/abc247/tasks/abc247_b
# implementation

from collections import Counter

n = int(input())
names = [input().split() for _ in range(n)]

fnames = Counter(i[0] for i in names)
lnames = Counter(i[1] for i in names)

for fn, ln in names:
    fnames[fn] -= 1
    lnames[ln] -= 1
    if (fnames[fn] > 0 or lnames[fn] > 0) and\
       (fnames[ln] > 0 or lnames[ln] > 0):
        print("No")
        exit()
    fnames[fn] += 1
    lnames[ln] += 1

print("Yes")
