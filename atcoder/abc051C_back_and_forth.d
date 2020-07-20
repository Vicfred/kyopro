// Vicfred
// https://atcoder.jp/contests/abc051/tasks/abc051_c
// implementation, math
import std.stdio;

void main() {
    int sx, sy, tx, ty;
    readf("%d %d %d %d", &sx, &sy, &tx, &ty);

    int dx = tx - sx;
    int dy = ty - sy;

    foreach(_; 0..dy)
        "U".write;
    foreach(_; 0..dx)
        "R".write;
    foreach(_; 0..dy)
        "D".write;
    foreach(_; 0..dx)
        "L".write;

    "L".write;

    dx += 1;
    dy += 1;

    foreach(_; 0..dy)
        "U".write;
    foreach(_; 0..dx)
        "R".write;

    "D".write;
    "R".write;

    foreach(_; 0..dy)
        "D".write;
    foreach(_; 0..dx)
        "L".write;

    "U".writeln;
}

