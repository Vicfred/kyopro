# Vicfred
# https://atcoder.jp/contests/abc132/tasks/abc132_a
# implementation
S = list(input())

if len(set(S)) == 2:
    if S.count(S[0]) == 2:
        print("Yes")
        quit()
print("No")

