# solution by Vicfred
# implementation by uninhm
# https://atcoder.jp/contests/abc181/tasks/abc181_c
# math

def det(a, b, c):
    x1, x2, x3 = a[0], b[0], c[0]
    y1, y2, y3 = a[1], b[1], c[1]
    return x1*(y2 - y3) + x2*(y3 - y1) + x3*(y1 - y2)

n = int(input())

points = [(0, 0)]*n

for i in range(n):
    x, y = map(int, input().split())
    points[i] = (x, y)

found = False
for i in range(n):
    for j in range(n):
        for k in range(n):
            if i == j or i == k or j == k:
                continue
            if det(points[i], points[j], points[k]) == 0:
                found = True
                break

print("YNeos"[not found::2])
