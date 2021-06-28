# Garo9521
# https://codeforces.com/contest/1521/problem/B
# math
t = int(input())
for case in range(t):
    n = int(input())
    array = list(map(int, input().split()))
    minpos = array.index(min(array))
    print(n - 1)
    for i in range(minpos):
        print(i + 1, minpos + 1, array[minpos] + minpos - i, array[minpos])
    for i in range(minpos + 1, n):
        print(minpos + 1, i + 1, array[minpos],  array[minpos] + i - minpos)
