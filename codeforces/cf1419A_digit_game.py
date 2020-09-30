# unihernandez22
# https://codeforces.com/contest/1419/problem/A
# greedy


def hasmodulo(s, a):
    for i in s:
        if int(i) % 2 == a:
            return True
    return False


for _ in range(int(input())):
    n = int(input())
    s = input()
    if n % 2 == 0:
        if hasmodulo(s[1::2], 0):
            print(2)
        else:
            print(1)
    else:
        if hasmodulo(s[0::2], 1):
            print(1)
        else:
            print(2)
