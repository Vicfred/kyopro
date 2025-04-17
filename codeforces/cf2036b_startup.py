# vicfred
# https://codeforces.com/contest/2036/problem/B
# greedy

t = int(input())
for testcast in range(t):
    n, k = list(map(int, input().split()))
    #print(n, k)
    MAXN = k + 2
    sodas = [0]*MAXN
    for bottle in range(k):
        brand, price = list(map(int, input().split()))
        sodas[brand] += price
    answer = 0
    sodas.sort(reverse=True)
    for i in range(min(n, len(sodas))):
        answer += sodas[i]
    print(answer)
