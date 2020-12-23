# uninhm & Vicfred
# https://atcoder.jp/contests/abc166/tasks/abc166_d
# math, probability, random
from random import randint

n = int(input())

for _ in range(10**6):
    x = randint(-200,200)
    y = randint(-200,200)
    if x**5 - y**5 == n:
        print(x,y)
        break;

