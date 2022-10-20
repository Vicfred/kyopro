# uninhm
# https://codeforces.com/contest/550/problem/C
# math, modulus

def ans_yes(ans):
    print("YES")
    print(ans)
    exit()

n = input()
x = [int(i)%8 for i in n]

for i in range(0, len(x)):
    if x[i] % 8 == 0:
        ans_yes(n[i])
    for j in range(i+1, len(x)):
        if (x[i]*2 + x[j]) % 8 == 0:
            ans_yes(n[i] + n[j])
        for k in range(j+1, len(x)):
            if (x[i]*4 + x[j]*2 + x[k]) % 8 == 0:
                ans_yes(n[i] + n[j] + n[k])
print("NO")
