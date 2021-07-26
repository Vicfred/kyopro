# uninhm
# https://codeforces.com/contest/1520/problem/A
# implementation

t = int(input())

for _ in range(t):
    input()
    s = input()
    a = set()
    last = ""
    for i in s:
        if i != last:
            if i in a:
                print("NO")
                break
            a.add(i)
            last = i
    else:
        print("YES")
