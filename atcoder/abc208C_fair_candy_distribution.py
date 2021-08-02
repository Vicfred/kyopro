# uninhm
# https://atcoder.jp/contests/abc208/tasks/abc208_c
# implementation

n, k = map(int, input().split())
a = list(map(int, input().split()))

x = sorted(a)[k%n]
for i in a:
    if i < x:
        print(k//n+1)
    else:
        print(k//n)
