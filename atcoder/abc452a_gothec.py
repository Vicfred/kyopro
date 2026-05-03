# uninhm
# https://atcoder.jp/contests/abc452/tasks/abc452_a
# implementation

m, d = map(int, input().split())

if (m, d) in [(1, 7), (3, 3), (5, 5), (7, 7), (9, 9)]:
    print('Yes')
else:
    print('No')
