# uninhm
# https://atcoder.jp/contests/abc454/tasks/abc454_d
# string manipulation

def simplify(s: str):
    res: list[str] = []
    i = 0
    while i < len(s):
        if s[i] != '(':
            res.append(s[i])
            i += 1
            continue

        count_open = 0
        while i < len(s) and s[i] == '(':
            count_open += 1
            i += 1
        
        count_x = 0
        while i < len(s) and s[i] == 'x':
            count_x += 1
            i += 1
        
        count_close = 0
        while i < len(s) and s[i] == ')':
            count_close += 1
            i += 1
        
        if count_x != 2:
            res.append('('*count_open)
            res.append('x'*count_x)
            res.append(')'*count_close)
        else:
            if count_open > count_close:
                res.append('('*(count_open - count_close))
            res.append('x'*count_x)
            if count_close > count_open:
                res.append(')'*(count_close - count_open))
    return ''.join(res)


    

t = int(input())

for _ in range(t):
    a = input()
    b = input()
    if simplify(a) == simplify(b):
        print('Yes')
    else:
        print('No')

