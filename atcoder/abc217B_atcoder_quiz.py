# uninhm
# https://atcoder.jp/contests/abc217/tasks/abc217_b
# implementation

contests = [ "ABC"
           , "ARC"
           , "AGC"
           , "AHC"
           ]

ans = 6
for _ in range(3):
    ans -= contests.index(input())
print(contests[ans])
