# uninhm
# https://atcoder.jp/contests/abc244/tasks/abc244_c
# implementation

n = int(input())
s = set(range(1, 2*n+2))

while True:
    print(s.pop())
    x = int(input())
    if x == 0:
        break
    s.remove(x)
