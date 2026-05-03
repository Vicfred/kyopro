# uninhm
# https://atcoder.jp/contests/abc426/tasks/abc426_d
# exhaustive search, cumulative sum

r = {'0': '1', '1': '0'}

def solve_from_one_side(s, x, reversed=False):
    ans = 0
    anss = [0]
    indices = range(len(s))
    if reversed: indices = range(len(s)-1, -1, -1)
    for i in indices:
        if s[i] == x:
            ans += 2
        else:
            ans += 1
        anss.append(ans)
    return anss

def calc_next(s, x):
    c = [0]*len(s)
    last = len(s)
    for i in range(len(s)-1, -1, -1):
        if s[i] == x:
            last = i
        c[i] = last
    return c


def try_with_char(s, x):
    a = solve_from_one_side(s, x)
    b = solve_from_one_side(s, x, reversed=True)
    c = calc_next(s, r[x])
    ans = a[len(s)]
    for i in range(len(s)):
        j = c[i]
        ans = min(ans, a[i]+b[len(s)-j])
    return ans


t = int(input())
for _ in range(t):
    _n = input()
    s = input()
    print(min(try_with_char(s, '0'), try_with_char(s, '1')))
