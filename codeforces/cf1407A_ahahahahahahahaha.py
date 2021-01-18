# uninhm
# https://codeforces.com/contest/1407/problem/A
# greedy

t = int(input())

for _ in range(t):
    n = int(input())
    a = list(map(int, input().split()))
    if a.count(1) <= n//2:
        print(a.count(0))
        print(*[i for i in a if i == 0])
    else:
        if sum(a) % 2 == 0:
            print(a.count(1))
            print(*[i for i in a if i == 1])
        else:
            print(a.count(1)-1)
            print(*([i for i in a if i == 1][:-1]))
