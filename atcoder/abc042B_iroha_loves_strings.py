# Vicfred
# https://atcoder.jp/contests/abc042/tasks/abc042_b
# sorting, greedy
n, l = list(map(int, input().split()))

list_of_words = []

for _ in range(n):
    s = input()
    list_of_words.append(s)

list_of_words.sort()

answer = ""
for word in list_of_words:
    answer += word

print(answer)

