# Implementation by unihernandez22 || Idea by Vicfred
# https://atcoder.jp/contests/abc171/tasks/abc171_c
# math, greedy

n = int(input())

digits = []

while n > 0:
    n -= 1
    digits.append(chr(n%26+97))
    n //= 26

print(''.join(reversed(digits)))
