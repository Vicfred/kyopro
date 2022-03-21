# uninhm
# https://atcoder.jp/contests/abc192/tasks/abc192_c
# implementation

n, k = map(int, input().split())

for i in range(k):
    strn = str(n)
    sort_strn = ''.join(sorted(strn))
    n = int(''.join(reversed(sort_strn))) - int(sort_strn)

print(n)
