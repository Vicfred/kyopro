# vicfred
# https://atcoder.jp/contests/abc043/tasks/abc043_a
# simulation
n = int(input())

candies = 0
for child in range(1,n+1):
    candies += child

print(candies)

