# uninhm
# https://atcoder.jp/contests/abc166/tasks/abc166_b
# implemtation
n, k = map(int, input().split())
 
snucks = [0]*n
 
for _ in range(k):
    input()
    for i in map(int, input().split()):
        snucks[i-1] = 1;
 
print(snucks.count(0))

