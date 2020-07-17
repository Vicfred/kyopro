# Vicfred
# https://atcoder.jp/contests/abc126/tasks/abc126_b
# implementation
s = int(input())

yy = s // 100
mm = s % 100

if 1 <= yy <= 12:
    if 1 <= mm <= 12:
        print("AMBIGUOUS")
    else:
        print("MMYY")
else:
    if 1 <= mm <= 12:
        print("YYMM")
    else:
        print("NA")

