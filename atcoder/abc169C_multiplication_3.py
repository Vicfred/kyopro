from decimal import Decimal
from math import floor

ins = input().split()
a = Decimal(ins[0])
b = Decimal(ins[1])

print(floor(a*b))

