# Vicfred
# https://codeforces.com/problemset/problem/1352/A
# implementation
t = int(input())

while t > 0:
    n = input()
    size = len(n) - 1
    summands = []
    for i in range(size,-1,-1):
        if n[len(n) - i - 1] != '0':
            summands.append(n[len(n)-i-1] + ''.join(['0']*i))
    print(len(summands))
    for summand in summands:
        print(summand, end=" ")
    print()
    t -= 1
