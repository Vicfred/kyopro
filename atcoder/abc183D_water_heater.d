// vicfred
// https://atcoder.jp/contests/abc183/tasks/abc183_d
// data structures, sorting
import std.algorithm;
import std.stdio;

struct pair {
    long s, p;
}

bool olis(pair a, pair b) {
    if(a.s == b.s)
        return a.p < b.p;
    return a.s < b.s;
}

void main() {
    long N, W;
    readf("%s %s\n", &N, &W);

    pair[] heats;

    foreach(i; 1..N+1) {
        long s, t, p;
        readf("%s %s %s\n", &s, &t, &p);
        heats ~= pair(s, p);
        heats ~= pair(t, -p);
    }

    heats.sort!(olis);

    long cumulative = 0L;
    foreach(item; heats) {
        cumulative += item.p;

        if(cumulative > W) {
            "No".writeln;
            return;
        }
    }

    "Yes".writeln;
}

