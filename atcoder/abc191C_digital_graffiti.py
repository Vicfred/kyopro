# uninhm
# https://atcoder.jp/contests/abc191/tasks/abc191_c
# greedy

h, w = map(int, input().split())

s = list(map(input, ['']*h))

ans = 0
for i in range(h):
    for j in range(w):
        if s[i][j] == '.':
            if i != (h-1) and s[i+1][j] == '#' and (s[i+1][j-1] == '.' or s[i][j-1] == '#'):
                ans += 1
            if s[i-1][j] == '#' and (s[i-1][j-1] == '.' or s[i][j-1] == '#'):
                ans += 1
            if j != (w-1) and s[i][j+1] == '#' and (s[i-1][j+1] == '.' or s[i-1][j] == '#'):
                ans += 1
            if s[i][j-1] == '#' and (s[i-1][j-1] == '.' or s[i-1][j] == '#'):
                ans += 1

print(ans)
