n, x = map(int, input().split())

divisors = 0

for i in range(1, n+1):
    if x%i == 0 and x/i <= n:
        divisors += 1

print(divisors)
