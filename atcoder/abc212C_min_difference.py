# uninhm
# https://atcoder.jp/contests/abc212/tasks/abc212_c
# binary search

n, m = map(int, input().split())
a = sorted(map(int, input().split()))
b = sorted(map(int, input().split()))

def binary_search(x, a):
    left = 0
    right = len(a)
    while right - left > 1:
        cur = (right+left)//2
        if a[cur] > x:
            right = cur
        else:
            left = cur
    return left

ans = float('inf')
for x in a:
    i = binary_search(x, b)
    ans = min(ans, abs(b[i] - x))
    if i+1 < len(b):
        ans = min(ans, abs(b[i+1] - x))
print(ans)
