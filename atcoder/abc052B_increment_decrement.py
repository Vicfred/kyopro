# uninhm
# https://atcoder.jp/contests/abc052/tasks/abc052_b
# implementation

input()
s = input()

ans = 0
x = 0
for i in s:
    if i == 'I':
        x += 1
    elif i == 'D':
        x -= 1
    ans = max(ans, x)

print(ans)
