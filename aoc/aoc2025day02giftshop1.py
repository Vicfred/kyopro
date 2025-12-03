line = input()
ranges = line.split(",")
print(ranges)
ans = 0
for r in ranges:
    parsed = r.split("-")
    n = int(parsed[0])
    m = int(parsed[1])
    for x in range(n,m+1):
        if len(str(x)) % 2 == 1:
            continue
        p = len(str(x))
        if str(x)[:p//2] == str(x)[p//2:]:
            ans += x
print(ans)
