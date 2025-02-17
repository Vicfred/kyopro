# Vicfred
# https://atcoder.jp/contests/abc393/tasks/abc393_a
# implementation

import strutils

proc countABCTriplets(s: string): int =
    var triples = 0
    let n = s.len
    
    for i in 0..<n:
        for j in i+1..<n:
            for k in j+1..<n:
                if j - i != k - j:
                    continue
                if s[i] == 'A' and s[j] == 'B' and s[k] == 'C':
                    inc(triples)
    return triples

when isMainModule:
    # Read input string
    var s: string
    if stdin.readLine(s):
        s = s.strip()
        echo countABCTriplets(s)
    else:
        echo "Invalid input"
