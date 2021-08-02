# uninhm
# https://codeforces.com/contest/1536/problem/A
# greedy

t = int(input())

solution = ' '.join(map(str, range(101)))
for _ in range(t):
    n = int(input())
    a = [int(i) for i in input().split()]
    if any(i<0 for i in a):
        print("NO")
        continue
    print("YES")
    print(101)
    print(solution)
