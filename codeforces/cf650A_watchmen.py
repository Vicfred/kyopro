# uninhm
# https://codeforces.com/contest/650/problem/A
# greedy

n = int(input())
dict_x = {}
dict_y = {}
dict_xy = {}

for _ in range(n):
    x, y = map(int, input().split())
    dict_xy[(x, y)] = dict_xy.get((x, y), 0) + 1
    dict_x[x] = dict_x.get(x, 0) + 1
    dict_y[y] = dict_y.get(y, 0) + 1

ans = 0
for i in (*dict_x.values(), *dict_y.values()):
    ans += i*(i-1)//2

for i in dict_xy.values():
    ans -= i*(i-1)//2

print(ans)
