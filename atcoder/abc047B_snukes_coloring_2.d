// vicfred
// https://atcoder.jp/contests/abc047/tasks/abc047_b
// implementation, math
import std.algorithm;
import std.stdio;

void main() {
    int w, h, n;
    readf("%s %s %s", &w, &h, &n);
    readln;

    int[] coords = new int[5];
    coords[1] = 0;
    coords[2] = w;
    coords[3] = 0;
    coords[4] = h;
    foreach(_; 0..n) {
        int x, y, a;
        readf("%s %s %s", &x, &y, &a);
        readln;
        if(a == 1) {
            coords[a] = max(coords[a], x);
        }
        if(a == 2) {
            coords[a] = min(coords[a], x);
        }
        if(a == 3) {
            coords[a] = max(coords[a], y);
        }
        if(a == 4) {
            coords[a] = min(coords[a], y);
        }
    }
    if((coords[4]-coords[3]) > 0 && (coords[2]-coords[1]) > 0)
        writefln("%s", (coords[4]-coords[3])*(coords[2]-coords[1]));
    else
        "0".writefln;
}

