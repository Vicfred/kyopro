def ans(p, x):
    a = 0
    for i in x:
        a += (i - p)**2
    return a

n = int(input())
x = list(map(int, input().split()))

p = sum(x)//n

print(min(ans(p, x), ans(p+1, x)))
