# uninhm
# https://codeforces.com/contest/1521/problem/A
# implementation

for _ in range(int(input())):
    a, b = map(int, input().split())

    if b == 1:
        print("NO")
        continue

    x = a
    y = a*b
    z = x+y

    print("YES")
    print(x, y, z)
