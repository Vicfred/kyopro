// Vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_b
// string manipulation

import std.stdio;
import std.string;

bool palindrome(string s) {
    long n = s.length;
    for(long i = 0; i < n/2; i++)
        if(s[i] != s[$-i-1])
            return false;
    return true;
}

void main() {
    string s = readln.chomp;
    long n = s.length;
    if(s[0..(n-1)/2].palindrome &&
            s[(n+1)/2..$].palindrome &&
            s.palindrome)
        "Yes".writeln;
    else
        "No".writeln;
}
