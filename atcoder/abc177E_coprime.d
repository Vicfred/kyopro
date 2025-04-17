// vicfred
// https://atcoder.jp/contests/abc177/tasks/abc177_e
// math
import std.stdio, std.algorithm, std.range, std.functional;
import std.array;
import std.conv;
import std.container;
import std.numeric;
import std.string;

uint[] sieve(in uint limit) nothrow @safe {
    if (limit < 2)
        return [];
    auto composite = new bool[limit];

    foreach (immutable uint n; 2 .. cast(uint)(limit ^^ 0.5) + 1)
        if (!composite[n])
            for (uint k = n * n; k < limit; k += n)
                composite[k] = true;

    //return iota(2, limit).filter!(not!composite).array;
    return iota(2, limit).filter!(i => !composite[i]).array;
}

void main() {
    const long MAXN = 10^^6;
    auto primes = (MAXN).sieve;

    long[long] visited;

    long n = readln.chomp.to!long;
    long[] a = readln.split.map!(to!long).array;

    long factor = a[0];
    foreach(number; a)
        factor = gcd(factor,number);

    RedBlackTree!long[long] pfactors;
    foreach(number; a)
        pfactors[number] = new RedBlackTree!long;

    long[] fprime = new long[MAXN+1];
    fprime[1] = 1;
    foreach(prime; primes) {
        for(int i = 1; i*prime <= MAXN; i++) {
            if(fprime[i*prime] == 0)
                fprime[i*prime] = prime;
        }
    }

    //fprime.writeln;

    foreach(number; a) {
        long nn = number;
        while(nn != 1) {
            pfactors[number].insert(fprime[nn]);
            nn /= fprime[nn];
        }
    }

    //pfactors.writeln;

    bool flag = true;
    foreach(number; a) {
        if(!flag) break;
        foreach(prime; pfactors[number]) {
            if(prime in visited) {
                flag = false;
                break;
            } else {
                visited[prime] = 1;
            }
        }
    }

    if(flag) {
        "pairwise coprime".writeln;
        return;
    }

    if(!flag && factor != 1) {
        "not coprime".writeln;
        return;
    }

    if(factor == 1) {
        "setwise coprime".writeln;
    }
}

