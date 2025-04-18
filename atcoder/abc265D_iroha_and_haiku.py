# uninhm
# https://atcoder.jp/contests/abc265/tasks/abc265_d
# binary search, cumulative sum

# The idea:
# Once you have the w, you can binary search your way back to x
# Testing every possible w should be O(n*log n)

def binary_search(a, x):
    l = 0
    r = len(a)
    while l < r:
        mid = (l+r)//2
        if a[mid] < x:
            l = mid + 1
        else: # a[mid] >= x
            r = mid
    return l

n, p, q, r = map(int, input().split())
a = list(map(int, input().split()))
acc = [0]
for x in a:
    acc.append(acc[-1]+x)

for w in range(n, 2, -1):
    z = binary_search(acc, acc[w]-r)
    y = binary_search(acc, acc[z]-q)
    x = binary_search(acc, acc[y]-p)
    if (p, q, r) == (acc[y]-acc[x], acc[z]-acc[y], acc[w]-acc[z]):
        print("Yes")
        break
else:
    print("No")
