# uninhm
# https://atcoder.jp/contests/abc181/tasks/abc181_d
# greedy, string manipulation, math

from collections import Counter

inp = input()
s = Counter(inp)

if len(inp) < 3:
    for i in range(0, 100, 8):
        if Counter(str(i)) == Counter(inp):
            print("Yes")
            quit()

for i in range(0, 1000, 8):
    a = Counter('0'*(3-len(str(i)))+str(i))
    found = True
    for j in a:
        if a[j] > s[j]:
            found = False
    if found:
        print("Yes")
        quit()

print("No")
