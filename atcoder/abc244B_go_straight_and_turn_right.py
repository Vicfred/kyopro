# uninhm
# https://atcoder.jp/contests/abc244/tasks/abc244_b
# implementation

n = int(input())
t = input()

x, y = 0, 0

facing = 'E'
cardinals = ['E', 'S', 'W', 'N']
movement = {
    'E': (1, 0),
    'S': (0, -1),
    'W': (-1, 0),
    'N': (0, 1)
}
for i in t:
    if i == 'S':
        mov = movement[facing]
        x += mov[0]
        y += mov[1]
    elif i == 'R':
        facing = cardinals[(cardinals.index(facing) + 1) % 4]
    else:
        raise ValueError

print(x, y)
