# uninhm
# https://atcoder.jp/contests/abc162/tasks/abc162_b
# simulation
ans = 0
for i in range(int(input())+1):
    if not (i%3 == 0 or i%5 == 0):
        ans += i
print(ans)

