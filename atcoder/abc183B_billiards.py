# unihernandez22
# https://atcoder.jp/contests/abc183/tasks/abc183_b
# binary search, math

x1, y1, x2, y2 = map(int, input().split())

if x1 > x2:
    x1, y1, x2, y2 = x2, y2, x1, y1

left = -10000000000000
right = 10000000000001
while abs(right-left) > 0.000000001:
    m1 = (right+left)/2
    m2 = -m1
    b1 = -m1 * x1 + y1
    b2 = -m2 * x2 + y2
    
    # Intersection
    x = (b2 - b1) / (m1 - m2)
    y = m1*x + b1

    if y >= 0:
        right = m1
    else:
        left = m1

print(x)
