// vicfred
// https://yukicoder.me/problems/no/1170
// implementation
import std.conv;
import std.stdio;
import std.string;

void main() {
    string N;
    long[101] a;

    N = readln.strip;
    
    foreach(digit; N)
        a[0] += digit - '0';

    for(int i = 1; i <= 100; i++) {
        N = a[i-1].to!string;
        foreach(digit; N)
            a[i] += digit - '0';
    }

    a[100].writeln;
}

