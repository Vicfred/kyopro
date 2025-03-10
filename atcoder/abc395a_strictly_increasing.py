def strictly_increasing(a):
    return all(a[i] < a[i + 1] for i in range(len(a) - 1))

if __name__ == "__main__":
    n = int(input())
    a = list(map(int, input().split()))
    print("Yes" if strictly_increasing(a) else "No")
