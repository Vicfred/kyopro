# unihernandez22
# https://codeforces.com/contest/1285/problem/C
# math

def gdc(a, b):
    if b == 0:
        return a
    return gdc(b, a%b)

def lcm(a, b):
    return a*b/gdc(a, b)

a = int(input())
maxima = 0
for i in range(1, int(a**2**-1)+1):
    if a%i == 0 and lcm(i, a//i) == a:
        maxima = max(maxima, i)

print(maxima, a//maxima)
