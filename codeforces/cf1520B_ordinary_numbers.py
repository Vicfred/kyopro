# uninhm
# https://codeforces.com/contest/1520/problem/B
# implementation

t = int(input())

for _ in range(t):
    n = int(input())
    ans = n >= int(str(n)[0]*len(str(n)))
    for i in range(len(str(n))):
        ans += 9
    ans -= 10-int(str(n)[0])
    print(ans)

