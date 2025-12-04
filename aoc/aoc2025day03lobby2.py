import sys

ans = 0
for line in sys.stdin:
    s = line.strip()
    if not s:
        continue
    n = len(s)
    to_remove = n - 12
    stack = []
    for ch in s:
        while stack and to_remove > 0 and stack[-1] < ch:
            stack.pop()
            to_remove -= 1
        stack.append(ch)
    best = ''.join(stack[:12])
    ans += int(best)
print(ans)

