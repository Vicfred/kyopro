import itertools as it

n,a,b,c = map(int, input().split())

if a+b+c==0:
  print('Yes' if n==0 else 'No'),exit(0)

if a+b+c==1:
  res = []
  for _ in range(n):
    s = input()
    if s == 'AB':
      if a+b==0:print('No'),exit(0)
      if a < b:
        res.append('A')
        a,b = a+1,b-1
      else:
        res.append('B')
        a,b = a-1,b+1
    elif s == 'AC':
      if a+c==0:print('No'),exit(0)
      if a < c:
        res.append('A')
        a,c = a+1,c-1
      else:
        res.append('C')
        a,c = a-1,c+1
    elif s == 'BC':
      if c+b==0:print('No'),exit(0)
      if c < b:
        res.append('C')
        c,b = c+1,b-1
      else:
        res.append('B')
        c,b = c-1,b+1
  print('Yes'),print('\n'.join(res)),exit(0)


if a+b+c==2:
  ops = [input() for _ in range(n)]
  opt = iter(ops); next(opt)
  res = []
  for s,t in it.zip_longest(ops, opt):
    if s == 'AB':
      if a+b==0:print('No'),exit(0)
      if a==0:
        res.append('A')
        a,b = a+1,b-1
      elif b==0:
        res.append('B')
        a,b = a-1,b+1
      else:
        if t=='AC':
          res.append('A')
          a,b = a+1,b-1
        else:
          res.append('B')
          a,b = a-1,b+1
    elif s == 'AC':
      if a+c==0:print('No'),exit(0)
      if a==0:
        res.append('A')
        a,c = a+1,c-1
      elif c==0:
        res.append('C')
        a,c = a-1,c+1
      else:
        if t=='AB':
          res.append('A')
          a,c = a+1,c-1
        else:
          res.append('C')
          a,c = a-1,c+1
    elif s == 'BC':
      if c+b==0:print('No'),exit(0)
      if c==0:
        res.append('C')
        c,b = c+1,b-1
      elif b==0:
        res.append('B')
        c,b = c-1,b+1
      else:
        if t=='AC':
          res.append('C')
          c,b = c+1,b-1
        else:
          res.append('B')
          c,b = c-1,b+1
  print('Yes'),print('\n'.join(res)),exit(0)
  exit(0)


s = input()
if  s == 'AB' and a+b==0 or\
    s == 'AC' and a+c==0 or\
    s == 'BC' and c+b==0 :
  print('No'),exit(0)

print('Yes')
for s in it.chain([s], (input() for _ in range(n-1))):
  if s == 'AB':
    if a < b:
      print('A')
      a,b = a+1,b-1
    else:
      print('B')
      a,b = a-1,b+1
  elif s == 'AC':
    if a < c:
      print('A')
      a,c = a+1,c-1
    else:
      print('C')
      a,c = a-1,c+1
  elif s == 'BC':
    if c < b:
      print('C')
      c,b = c+1,b-1
    else:
      print('B')
      c,b = c-1,b+1

