# Vicfred
# https://atcoder.jp/contests/abc072/tasks/arc082_a
# greedy, bucket sort
class Counter(dict):
    def __missing__(self, i):
        return 0

n = int(input())
a = list(map(int, input().split()))

counter = Counter()

for item in a:
    counter[item] += 1
    counter[item+1] += 1
    counter[item-1] += 1

maxima = max(counter.values())

print(maxima)

