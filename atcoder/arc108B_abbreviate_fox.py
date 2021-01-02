# uninhm
# https://atcoder.jp/contests/arc108/tasks/arc108_b
# greedy, stack

n = int(input())
s = input()

t = ""

for c in s:
    t += c
    while len(t) >= 3 and t[-3:] == 'fox':
        t = t[:-3]

print(len(t))
