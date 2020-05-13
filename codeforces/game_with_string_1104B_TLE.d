// https://codeforces.com/contest/1104/problem/B
// greedy
import std.stdio;
import std.string;
import std.algorithm;
 
void main() {
    string a = readln;
    bool conseguido = true;
    int num_games = 0;
    int last = 1;

    while(conseguido) {
        conseguido = false;
        for (int i=last; i<a.count; i++) {
            if (a[i-1] == a[i]) {
                a = a[0..i-1] ~ a[i+1..$];
                conseguido = true;
                last = max(1,i-2);
                break;
            }
        }
        num_games += 1;
    }
 
    if (num_games % 2 == 0) {
        writeln("Yes");
    } else {
        writeln("No");
    }
}
