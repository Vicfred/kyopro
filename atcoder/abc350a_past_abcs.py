# vicfred
# https://atcoder.jp/contests/abc350/tasks/abc350_a
# brute force
contests = set()
for x in range(1, 350):
    contest = "ABC{:03d}".format(x)
    contests.add(contest)
contests.remove("ABC316")
ins = input()
if ins in contests:
    print("Yes")
else:
    print("No")
