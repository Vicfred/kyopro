# unihernandez22
# https://atcoder.jp/contests/abc155/tasks/abc155_b
# implementation

input()
a = map(int, input().split())
for i in a :
    if i%2==0 and i%3 != 0 and i%5 != 0 :
        print("DENIED")
        break
else:
    print("APPROVED")
