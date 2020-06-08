# Vicfred
# https://atcoder.jp/contests/abc154/tasks/abc154_a
# simulation
s, t = input().split()
a, b = list(map(int, input().split()))
u = input()

balls = {}
balls[s] = a
balls[t] = b
balls[u] = balls[u] - 1

print(balls[s], balls[t])

