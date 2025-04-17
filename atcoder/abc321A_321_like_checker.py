# vicfred
# https://atcoder.jp/contests/abc321/tasks/abc321_a
# implementation
N = list(input())
flag = True
for i in range(len(N) - 1):
    if int(N[i]) <= int(N[i+1]):
        flag = False
if flag:
    print("Yes")
else:
    print("No")
