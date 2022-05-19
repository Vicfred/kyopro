# uninhm
# https://atcoder.jp/contests/abc197/tasks/abc197_c
# brute force, bitmask

def calc(a, b):
    or_ = None
    res = None
    for i in range(len(a)):
        if or_ is None:
            or_ = a[i]
        else:
            or_ |= a[i]
        if (1<<i) & b:
            if res is None:
                res = or_
            else:
                res ^= or_
            or_ = None
    if res is None:
        res = or_
    else:
        res ^= or_
    return res


def main():
    n = int(input())
    a = list(map(int, input().split()))

    ans = float('inf')
    for i in range(1<<(n-1)):
        ans = min(ans, calc(a, i))
    print(ans)


main()
