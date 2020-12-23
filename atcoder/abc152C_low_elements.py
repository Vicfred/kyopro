# uninhm
# https://atcoder.jp/contests/abc152/tasks/abc152_c
# greedy

input()
first, *p = map(int, input().split())

last = first
ans = 1
for i in p:
    if i < last:
        ans += 1
        last = i

print(ans)
