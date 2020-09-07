# unihernandez22
# https://codeforces.com/contest/1397/problem/B
# math

n = int(input())
a = list(map(int, input().split()))

if n > 35 or n < 2:
    ans = 0
    for i in a:
        ans += i - 1
    print(ans)
    quit()

a.sort()

ans = 10**14
c = 1
while True:
    local_ans = 0
    for i, elem in enumerate(a):
        local_ans += abs(elem - c**i)

    if local_ans > ans:
        break

    ans = min(local_ans, ans)
    c += 1

print(ans)
