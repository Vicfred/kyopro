n = int(input())
a = set(map(int, input().split()))

i = 0
while True:
    if i in a:
        i += 1
        continue
    print(i)
    break
