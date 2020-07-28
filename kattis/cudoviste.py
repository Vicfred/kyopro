# Vicfred
# https://open.kattis.com/problems/cudoviste
# brute force
R, C = list(map(int, input().split()))

parking = list()
for i in range(R):
    S = input()
    parking.append(S)

ans = [0]*5
for i in range(R - 1):
    for j in range(C - 1):
        count = dict()
        count['.'] = 0
        count['X'] = 0
        count['#'] = 0
        count[parking[i][j]] += 1;
        count[parking[i+1][j]] += 1;
        count[parking[i][j+1]] += 1;
        count[parking[i+1][j+1]] += 1;
        if count['.'] + count['X'] == 4:
            ans[count['X']] += 1

for i in range(5):
    print(ans[i])

