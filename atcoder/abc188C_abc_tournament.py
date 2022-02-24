# uninhm
# https://atcoder.jp/contests/abc188/tasks/abc188_c
# simulation

n = int(input())
a = [(int(e), i+1) for i, e in enumerate(input().split())]

while len(a) > 2:
    new_a = []
    for i in range(len(a)//2):
        new_a.append(max(a[2*i], a[2*i + 1]))
    a = new_a

print(min(a)[1])
