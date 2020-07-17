# unihernandez22
# https://atcoder.jp/contests/abc128/tasks/abc128_b
# implementation

n = int(input())
restaurants = []

for i in range(1, n+1):
    name, score = input().split()
    restaurants.append((name, -int(score), i))

restaurants.sort()
for i in restaurants:
    print(i[2])
