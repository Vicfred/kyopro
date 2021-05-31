# uninhm
# https://codeforces.com/contest/1418/problem/B
# greedy

for _ in range(int(input())):
    n = int(input())
    a = list(map(int, input().split()))
    l = list(map(int, input().split()))
    a2 = [a[i] for i in range(n) if l[i] == 0]
    a2.sort(key=lambda x: -x)
    i = 0
    for j in range(n):
        if l[j] == 0:
            a[j] = a2[i]
            i += 1
    print(*a)
