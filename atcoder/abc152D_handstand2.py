# uninhm
# https://atcoder.jp/contests/abc152/tasks/abc152_d
# greedy

class Counter(dict):
    def __missing__(self, i):
        return 0


n = int(input())

counter = Counter()
for x in map(str, range(1, n+1)):
    head = x[0]
    tail = x[-1]
    counter[(head, tail)] += 1

ans = 0
for (head, tail), cnt in counter.items():
    ans += cnt * counter[(tail, head)]

print(ans)
