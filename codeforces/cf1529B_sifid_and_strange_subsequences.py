# uninhm
# https://codeforces.com/contest/1529/problem/B
# greedy

t = int(input())
for _ in range(t):
    n = int(input())
    a = list(map(int, input().split()))
    a.sort()
    ans = 0
    last = mindiff = float('inf')
    for i in a:
        if abs(last - i) < mindiff:
            mindiff = abs(last - i)
        if i <= mindiff:
            ans += 1
        else:
            break
        last = i
    print(ans)


