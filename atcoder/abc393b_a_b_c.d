// vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation

import std.stdio;
import std.string;

int countABCTriplets(string S) {
    int n = cast(int) S.length; // Explicit cast to int
    int triples = 0;
    
    for (int i = 0; i < n; ++i) {
        for (int j = i + 1; j < n; ++j) {
            for (int k = j + 1; k < n; ++k) {
                if (j - i != k - j) {
                    continue;
                }
                if (S[i] == 'A' && S[j] == 'B' && S[k] == 'C') {
                    ++triples;
                }
            }
        }
    }
    return triples;
}

void main() {
    // Read input string
    string S = readln().strip(); // Corrected input handling
    writeln(countABCTriplets(S));
}
