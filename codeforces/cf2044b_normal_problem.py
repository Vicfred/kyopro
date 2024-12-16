# Vicfred
# https://codeforces.com/contest/2044/problem/B
# implementation
t = int(input())
for testcase in range(t):
    a = input()
    b = ""
    for ch in reversed(a):
        if ch == 'p':
            b += 'q'
        elif ch == 'q':
            b += 'p'
        else:
            b += 'w'
    print(b)

