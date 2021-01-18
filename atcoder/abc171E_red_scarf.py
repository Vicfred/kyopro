# Implementation by uninhm || Idea by Vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_e
# bitwise

input()
a = list(map(int, input().split()))

xor = a[0]
for i in a[1:]:
    xor ^= i

for i in a:
    print(xor ^ i, end=' ')
print()
