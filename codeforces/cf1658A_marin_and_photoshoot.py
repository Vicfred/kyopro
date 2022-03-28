# uninhm
# https://codeforces.com/contest/1658/problem/A
# greedy

t = int(input())
for _ in range(t):
    n = int(input())
    s = input()

    ans = 0
    last = -3
    for i in range(n):
        if s[i] == '0':
            if i - last - 1 < 2:
                ans += 2 - (i - last - 1)
            last = i
    print(ans)
