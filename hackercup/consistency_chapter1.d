// Vicfred
// https://www.facebook.com/codingcompetitions/hacker-cup/2021/qualification-round/problems/A1
// brute force
import std.algorithm;
import std.stdio;

bool isvowel(char c) {
    return c == 'A' || c == 'I' || c == 'U' || c == 'E' || c == 'O';
}
void main() {
    int T;
    readf("%s\n", &T);

for(int kase = 1; kase <= T; ++kase) {
    string S;
    readf("%s\n", &S);

    int ans = int.max;
    for(char letter = 'A'; letter <= 'Z'; ++letter) {
        int cost = 0;
        foreach(c; S) {
            if(c != letter) {
                if(isvowel(c) == isvowel(letter)) {
                    cost += 2;
                } else {
                    cost += 1;
                }
            }
        }
        ans = min(ans, cost);
    }
    writefln("Case #%s: %s", kase, ans);
}
}
