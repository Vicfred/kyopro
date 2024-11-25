# Vicfred
# https://codeforces.com/contest/2036/problem/A
# implementation
t = int(input())
for melody in range(t):
    n = int(input())
    a = list(map(int, input().split()))
    valid = True
    for idx in range(n - 1):
        diff = abs(a[idx] - a[idx + 1])
        if diff != 5 and diff != 7:
           valid = False
    if valid:
        print("Yes")
    else:
        print("No")
