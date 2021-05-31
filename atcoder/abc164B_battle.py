# uninhm
# https://atcoder.jp/contests/abc164/tasks/abc164_b
# simulation
class Monster:
    def __init__(self, health, strength):
        self.health = health
        self.strength = strength

a = list(map(int, input().split()))

t_monster = Monster(*a[:2])
a_monster = Monster(*a[2:])

i = 0
while t_monster.health > 0 and a_monster.health > 0:
    if i % 2 == 0:
        a_monster.health -= t_monster.strength
    else:
        t_monster.health -= a_monster.strength
    i += 1

if t_monster.health > 0:
    print("Yes")
else:
    print("No")

