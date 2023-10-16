smooth = { 2**x * 3 **y for x in range(70) for y in range(70) }
N = int(input())
if N in smooth:
    print("Yes")
else:
    print("No")
