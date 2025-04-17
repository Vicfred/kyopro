# vicfred
# https://atcoder.jp/contests/abc044/tasks/abc044_b
# implementation
w = input()

english = {}

for ch in w:
    if ch in english:
        english[ch] += 1
    else:
        english[ch] = 1

beautiful = True
for value in english.values():
    if value%2 == 1:
        beautiful = False

if beautiful:
    print("Yes")
else:
    print("No")
