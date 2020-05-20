# Vicfred
# https://atcoder.jp/contests/abc043/tasks/abc043_b
# simulation
s = input()

display = []

for ch in s:
    if ch == '0' or ch == '1':
        display.append(ch)
    else:
        if len(display) > 0:
            display.pop()

for ch in display:
    print(ch,end='')
print()

