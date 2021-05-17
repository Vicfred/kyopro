# nel_tu_
# https://codeforces.com/contest/1509/problem/B
# greedy
def valid(n, s):
    if n % 3: return False

    count = [0, 0]
    T, M = 0, 1
    max_diff = n // 3

    for c in s:
        count[c == 'M'] += 1
        if count[M] > count[T]:
            return False
        if count[T] - count[M] > max_diff:
            return False

    return count[T] == 2 * count[M]

for _ in range(int(input())):
    n, s = int(input()), input()
    print('YES' if valid(n, s) else 'NO')

