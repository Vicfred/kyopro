# unihernandez22
# https://atcoder.jp/contests/abc159/tasks/abc159_b
# string manipulation
def is_palindrome(s):
    if len(s) > 1:
        i = 0
        n = len(s)-1
        while s[i] == s[n]:
            i += 1
            n -= 1
            if i >= n:
                break
        else:
            return False
        return True
    else:
        return True

s = input()
n = len(s)

if is_palindrome(s) and is_palindrome(s[0:(n-1)//2]) and is_palindrome(s[(n+3)//2-1:]):
    print("Yes")
else:
    print("No")

