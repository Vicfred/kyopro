# uninhm
# https://atcoder.jp/contests/abc213/tasks/abc213_c
# implementation

class Card:
    def __init__(self, row, col, i):
        self.row = row
        self.col = col
        self.i = i

h, w, n = map(int, input().split())
cards = []
for i in range(n):
    a, b = map(int, input().split())
    cards.append(Card(a, b, i))

def solve(cards, attrname):
    get = lambda card: getattr(card, attrname)
    cards.sort(key=get)

    i = 1
    last = None
    for card in cards:
        if get(card) == last:
            i -= 1
        last = get(card)
        setattr(card, attrname, i)
        i += 1

solve(cards, 'row')
solve(cards, 'col')

cards.sort(key=lambda card: card.i)
for card in cards:
    print(card.row, card.col)
