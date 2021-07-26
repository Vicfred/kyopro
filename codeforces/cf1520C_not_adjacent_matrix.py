# uninhm
# https://codeforces.com/contest/1520/problem/C
# greedy

for t in range(int(input())):
    n = int(input())
    if n == 2:
        print("-1")
        continue

    matrix = [[0]*n for i in range(n)]
    i = 1
    flag = False
    for y in range(n):
        for x in range(n):
            if (not flag) and i*2 > n*n:
                flag = True
                i = 1
            if flag:
                matrix[y][x] = i*2-1
                i += 1
            else:
                matrix[y][x] = i*2
                i += 1

    for i in matrix: print(*i)

