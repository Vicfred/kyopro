# unihernandez22
# https://atcoder.jp/contests/abc179/tasks/abc179_b
# implementation

n = int(input())

count = 0
for _ in range(n):
    a, b = input().split()
    if a == b:
        count += 1
    else:
        count = 0
    if count == 3:
        print("Yes")
        quit()

print("No")
