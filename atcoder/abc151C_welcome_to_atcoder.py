# unihernandez22
# https://atcoder.jp/contests/abc151/tasks/abc151_c
# implementation

class Counter(dict):
    def __missing__(self, i):
        return 0

class BoolDict(dict):
    def __missing__(self, i):
        return False

n, m = map(int, input().split())

passed = 0
penalties = Counter()

ac = BoolDict()

for i in range(m):
    p, s = input().split()
    if not ac[p]:
        if s == "WA": penalties[p] += 1
        elif s == "AC":
            passed += 1
            ac[p] = True

x = 0
for i in penalties:
    if ac[i]:
        x += penalties[i]

print(passed, x)
