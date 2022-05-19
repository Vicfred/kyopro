# uninhm
# https://atcoder.jp/contests/abc237/tasks/abc237_d
# tree

class Node:
    def __init__(self, value, left=None, right=None):
        self.value = value
        self.left = left
        self.right = right

n = int(input())
s = input()

tree = Node(0)
dic = {0: tree}

for i in range(n):
    nd = Node(i+1)
    if s[i] == 'L':
        dic[i].left = nd
        dic[i+1] = nd
    elif s[i] == 'R':
        dic[i].right = nd
        dic[i+1] = nd

stack = []
node = tree
while True:
    while node:
        stack.append(node)
        node = node.left
    node = stack.pop()
    print(node.value, end='')
    node = node.right
    if node or len(stack) > 0:
        print(' ', end='')
    else:
        break
print()
