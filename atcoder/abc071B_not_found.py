# vicfred
# https://atcoder.jp/contests/abc071/tasks/abc071_b
# string manipulation, implementation
S = input().strip()
alphabet = "abcdefghijklmnopqrstuvwxyz"

for ch in alphabet:
    if ch not in S:
        print(ch)
        exit()
print("None")

