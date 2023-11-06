# Vicfred
# https://atcoder.jp/contests/abc327/tasks/abc327_b
# implementation, brute
B = int(input())
for x in range(1,20):
    if x ** x == B:
        print(x)
        exit()
print(-1)
