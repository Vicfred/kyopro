# unihernandez22
# https://codeforces.com/contest/1418/problem/A
# math

for _ in range(int(input())):
    x, y, k = map(int, input().split())
    print((k*(y+1)-1+(x-2))//(x-1)+k)
