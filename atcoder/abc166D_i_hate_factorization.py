# unihernandez22
# https://atcoder.jp/contests/abc166/tasks/abc166_d
# math, brute force
n = int(input())
for a in range(n):
    breaked = True
    for b in range(-1000, 1000):
        if a**5 - b**5 == n:
            print(a, b)
            break;
    else:
        breaked = False
    if breaked:
        break
