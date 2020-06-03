# unihernandez22
# https://codeforces.com/contest/1312/problem/C
# greedy, math

t = int(input())
for _ in range(t):
    n, k = map(int, input().split())
    a = list(map(int, input().split()))

    ans = 0
    while any(a):
        ans |= [x%k for x in a if x%k] > [1]
        a = [x//k for x in a]
    
    print("YNEOS"[ans::2])
