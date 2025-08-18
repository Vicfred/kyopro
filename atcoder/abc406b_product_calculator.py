# vicfred
# https://atcoder.jp/contests/abc406/tasks/abc406_b
# implementation
n, k = list(map(int, input().split()))
A = list(map(int, input().split()))
display = 1
for a in A:
    display *= a
    if len(str(display)) > k:
        display = 1
print(display)
