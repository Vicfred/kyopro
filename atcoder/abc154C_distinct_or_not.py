# unihernandez22
# https://atcoder.jp/contests/abc154/tasks/abc154_c
# implementation

input()
a = input().split()

ans = "YES"
x = {}
for i in a:
    if x.get(i, False):
        ans = "NO"
        break
    x[i] = True

print(ans)
