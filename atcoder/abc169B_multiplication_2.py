n = int(input())
a = list(map(int, input().split()))

for item in a:
    if item == 0:
        print(0)
        exit()

ans = 1
for item in a:
    ans = ans*item
    if ans > 10**18:
        print(-1)
        exit()

print(ans)
