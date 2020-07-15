// Vicfred
// https://atcoder.jp/contests/abc128/tasks/abc128_b
// implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

struct restaurant {
    string name;
    int score;
    int index;

    int opCmp(restaurant rhs) const {
        if(name == rhs.name)
            return rhs.score - score;
        return cmp(name, rhs.name);
    }
}

void main() {
    const int n = readln.chomp.to!int;
    restaurant[] restaurants;

    for(int i = 1; i <= n; i++) {
        string name;
        int score;
        readf("%s %s\n", &name, &score);
        restaurant r = restaurant(name, score, i);
        restaurants ~= r;
    }

    restaurants.sort;

    foreach(r; restaurants)
        r.index.writeln;
}

