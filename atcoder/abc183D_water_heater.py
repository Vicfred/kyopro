# uninhm
# https://atcoder.jp/contests/abc183/tasks/abc183_d
# data structures, sorting

n, w = map(int, input().split())

needed = []
for _ in range(n):
    s, t, p = map(int, input().split())
    needed.append((s, p))
    needed.append((t, -p))

needed.sort()

cum = 0
for i in range(len(needed)):
    cum += needed[i][1]
    if i != len(needed)-1 and needed[i+1][0] == needed[i][0]:
        continue
    if cum > w:
        print("No")
        quit()


print("Yes")
