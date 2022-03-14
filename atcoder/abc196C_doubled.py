# uninhm
# https://atcoder.jp/contests/abc196/tasks/abc196_c
# implementation

n = int(input())

i = 1;
while int(str(i)*2) <= n:
    i += 1

print(i-1)
