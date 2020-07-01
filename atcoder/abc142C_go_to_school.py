# Vicfred
# https://atcoder.jp/contests/abc142/tasks/abc142_c
# implementation
n = int(input())
a = list(map(int,input().split()))

students = list()
for i in range(1,n+1):
    students.append((i,a[i-1]))

#print(sorted(students, key=lambda x: x[1]))
students.sort(key=lambda x: x[1])

for student in students:
    print(student[0], end=' ')
print()

