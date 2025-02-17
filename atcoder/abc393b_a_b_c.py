# Vicfred
# https://atcoder.jp/contests/abc393/tasks/abc393_a
# implementation

def count_abc_triplets(S: str) -> int:
    n = len(S)
    triples = 0
    for i in range(n):
        for j in range(i + 1, n):
            for k in range(j + 1, n):
                if j - i != k - j:
                    continue
                if S[i] == 'A' and S[j] == 'B' and S[k] == 'C':
                    triples += 1
    return triples

def main():
    # Read input string
    S = input().strip()
    print(count_abc_triplets(S))

if __name__ == "__main__":
    main()
