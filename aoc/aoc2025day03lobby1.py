import sys

ans = 0
for line in sys.stdin:
    line = line.rstrip("\n")
    n = len(line)
    maxima = 0
    for i in range(n):
        for j in range(i+1,n):
            x = line[i]
            y = line[j]
            xy = x + y
            xy = int(xy)
            maxima = max(maxima,xy)
    ans += maxima
print(ans)
