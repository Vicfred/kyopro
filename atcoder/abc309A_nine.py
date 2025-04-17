# vicfred
# https://atcoder.jp/contests/abc309/tasks/abc309_a
# implementation
A, B = map(int, input().split())
if {A, B} == {1, 2} or {A, B} == {2, 3} or\
{A, B} == {4, 5} or {A, B} == {5, 6} or\
{A, B} == {7, 8} or {A, B} == {8, 9}:
    print("Yes")
else:
    print("No")
