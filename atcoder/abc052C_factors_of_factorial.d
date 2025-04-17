// vicfred
// https://atcoder.jp/contests/abc052/tasks/arc067_a
// math
import std.algorithm;
import std.array;
import std.conv;
import std.functional;
import std.math;
import std.range;
import std.stdio;
import std.string;

uint[] sieve(in uint limit) nothrow @safe {
    if (limit < 2)
        return [];
    auto composite = new bool[limit];

    foreach (immutable uint n; 2 .. cast(uint)(limit ^^ 0.5) + 1)
        if (!composite[n])
            for (uint k = n * n; k < limit; k += n)
                composite[k] = true;

    return iota(2, limit).filter!(i => !composite[i]).array;
}

void main() {
    uint[] primes = sieve(1000);

    long n = readln.chomp.to!long;

    long[long] exponents;
    foreach(prime; primes)
        exponents[prime] = 0;

    for(long i = 2; i <= n; ++i) {
        long m = i;
        foreach(prime; primes) {
            long div = 0;
            while(m%prime == 0) {
                div += 1;
                m /= prime;
            }
            exponents[prime] += div;
        }
    }

    long ans = 1;
    foreach(exp; exponents.values) {
        ans *= (exp+1);
        ans %= 10^^9+7;
    }

    ans.writeln;
}

