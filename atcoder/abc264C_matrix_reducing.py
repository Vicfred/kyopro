# uninhm
# https://atcoder.jp/contests/abc264/tasks/abc264_c
# brute force, bitmask

h1, w1 = map(int, input().split())
a = [[int(i) for i in input().split()] for _ in range(h1)]
h2, w2 = map(int, input().split())
b = [[int(i) for i in input().split()] for _ in range(h2)]

def are_equal(bitmask_lines, bitmask_columns):
    bi = 0
    for i in [k for (k, e) in enumerate(bitmask_lines) if e == '1']:
        bj = 0
        for j in [k for (k, e) in enumerate(bitmask_columns) if e == '1']:
            if a[i][j] != b[bi][bj]:
                return False
            bj += 1
        bi += 1
    return True

def genbitmasks(l1, l2):
    for i in range(0, 2**l1):
        s = bin(i)[2:]
        if s.count('1') == l2:
            yield '0' * (l1-len(s)) + s

if h2 > h1 or w2 > w1:
    print("No")
    exit(0)

for bitmask_lines in genbitmasks(h1, h2):
    for bitmask_columns in genbitmasks(w1, w2):
        if are_equal(bitmask_lines, bitmask_columns):
            print("Yes")
            exit(0)
print("No")
