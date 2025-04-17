# vicfred
# https://atcoder.jp/contests/abc072/tasks/abc072_b
# string manipulation, simulation
s = input()

ans = ""
for i in range(len(s)):
    if i%2 == 0:
        ans += s[i]
print(ans)

