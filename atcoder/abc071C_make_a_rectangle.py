# Vicfred
# https://atcoder.jp/contests/abc071/tasks/arc081_a
# greedy, sorting
class Counter(dict):
    def __missing__(self, i):
        return 0

n = int(input())
a = list(map(int, input().split()))

a.sort()
a.reverse()

counter = Counter()
for i in a:
    counter[i] += 1

first = -1
second = -1
for item in a:
    if second != -1:
        break;
    if counter[item] >= 2:
        if first == -1:
            first = item
            counter[item] -= 2
        elif second == -1:
            second = item

if first != -1 and second != -1:
    print(first*second)
else:
    print(0)
