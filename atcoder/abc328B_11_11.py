# vicfred
# https://atcoder.jp/contests/abc328/tasks/abc328_b
# implementation
N = int(input())
D = input().split()
ans = 0
for idx in range(0, len(D)):
    month = str(idx + 1)
    days = int(D[idx])
    digits = set()
    for ch in month:
        digits.add(ch)
    if len(digits) > 1:
        continue
    digit = month[0]
    for day in range(1, days + 1):
        valid = True
        for ch in str(day):
            if ch != digit:
                valid = False
        if valid:
            ans += 1
print(ans)
