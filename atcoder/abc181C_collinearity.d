// Vicfred
// https://atcoder.jp/contests/abc181/tasks/abc181_c
// math
import std.stdio;

struct point {
    long x, y;
}

long det(point a, point b, point c) {
    long x1 = a.x;
    long x2 = b.x;
    long x3 = c.x;
    long y1 = a.y;
    long y2 = b.y;
    long y3 = c.y;
    
    return x1*(y2 - y3) + x2*(y3 - y1) + x3*(y1 - y2);
}

void main() {
    long n;
    readf("%s\n", &n);

    point[] points = new point[n];

    long x, y;
    foreach(i; 0..n)
        readf("%s %s\n", &points[i].x, &points[i].y);

    bool found = false;
    for(int i = 0; i < n; i++) {
        for(int j = 0; j < n; j++) {
            for(int k = 0; k < n; k++) {
                if(i == j || i == k || j == k)
                    continue;
                if(det(points[i], points[j], points[k]) == 0)
                    found = true;
            }
        }
    }

    if(found)
        "Yes".writeln;
    else
        "No".writeln;
}

