// vicfred
// https://codeforces.com/contest/1400/problem/B
// 
import std.algorithm;
import std.stdio;

void main() {
    long t, p, f, cnts, cntw, s, w;

    readf("%s", &t);
    readln;

    while(t--) {
        readf("%s %s\n", &p, &f);
        readf("%s %s\n", &cnts, &cntw);
        readf("%s %s\n", &s, &w);

        if(s > w) {
            swap(s,w);
            swap(cnts, cntw);
        }

        long ans = long.min;
        for(long swords = 0; swords <= cnts; ++swords) {
            if(p/s < swords)
                continue;

            long goku, freezer, cnt, maxima;
            goku = p;
            freezer = f;

            goku -= swords*s;
            cnt = min(f/s, cnts - swords);
            freezer -= cnt*s;

            maxima = swords + cnt;
            maxima += min(cntw, goku/w + freezer/w);

            //writefln("goku lleva %s espadas", swords);
            //writefln("freezer lleva %s espadas", cnt);
            //writefln("hachas %s", min(cntw, goku/w + freezer/w));

            ans = max(maxima, ans);
        }

        ans.writeln;
    }
}

