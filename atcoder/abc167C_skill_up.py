# uninhm
# https://atcoder.jp/contests/abc167/tasks/abc167_c
# implementation
n, m, x = map(int, input().split())
 
posibilities = []
 
for _ in range(n):
    book = list(map(int, input().split()))
    b = posibilities[:]
    for i in b:
        posibilities.append([z+y for z, y in zip(i, book)])
    posibilities.append(book)
 
posibilities.sort(key=lambda i: i[0])
 
for i in posibilities:
    for j in i[1:]:
        if j < x:
            break
    else:
        print(i[0])
        break
else:
    print(-1)
