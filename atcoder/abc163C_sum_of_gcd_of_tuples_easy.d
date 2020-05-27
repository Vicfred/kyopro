// Vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_c
// math
import std.conv;
import std.stdio;
import std.string;

long gcd(long a, long b) {
    if(b == 0)
        return a;
    return gcd(b, a%b);
}

long gcd(long a, long b, long c) {
    return gcd(a,gcd(b,c));
}

void main() {
    int K = readln.chomp.to!int;

    long sum = 0;

    for(int i = 1; i <= K; i++)
        for(int j = 1; j <= K; j++)
            for(int k = 1; k <= K; k++)
                sum += gcd(i,j,k);

    sum.writeln;
}

