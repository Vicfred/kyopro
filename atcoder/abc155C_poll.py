# unihernandez22
# https://atcoder.jp/contests/abc155/tasks/abc155_c
# implementation

class Counter(dict):
  def __missing__(self, i):
    return 0

n = int(input())

s = Counter()

for _ in range(n):
  i = input()
  s[i] += 1

s = list(sorted(s.items(), key=lambda x: -x[1]))
m = s[0][1]

ans = []
for key, value in s:
  if value == m:
    ans.append(key)
  else:
    break

ans.sort()

print('\n'.join(ans))
