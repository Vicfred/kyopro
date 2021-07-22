# uninhm
# https://atcoder.jp/contests/abc207/tasks/abc207_c
# implementation

n = int(input())

intervals = []
for _ in range(n):
    intervals.append(tuple(map(int, input().split())))

intervals.sort(key=lambda x: x[1])

ans = 0
for i in range(n):
    t1, l1, r1 = intervals[i]
    for j in range(i+1, n):
        t2, l2, r2 = intervals[j]
        if l2 < r1 or (t1 in (1,3) and t2 in (1,2) and l2==r1):
            ans += 1
print(ans)

