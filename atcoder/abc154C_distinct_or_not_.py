# vicfred
# https://atcoder.jp/contests/abc154/tasks/abc154_c
# sorting
n = int(input())
a = list(map(int, input().split()))

a.sort()

repeated = False
for i in range(len(a)-1):
    if a[i] == a[i+1]:
        repeated = True
        break

if repeated:
    print("NO")
else:
    print("YES")

