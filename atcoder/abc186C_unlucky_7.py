n = int(input())

nums = set()
for i in range(1, n + 1):
    if '7' in str(i):
        nums.add(i)
    if '7' in oct(i):
        nums.add(i)

ans = n - len(nums)
print(ans)
