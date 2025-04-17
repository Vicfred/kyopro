// vicfred
// https://atcoder.jp/contests/abc194/tasks/abc194_a
// implementation
import std.stdio;

void main() {
    int A, B;
    readf("%s %s\n", &A, &B);
    const int milksolids = A + B;
    const int milkfat = B;
    if(milksolids >= 15 && milkfat >= 8) {
        "1".writeln;
    } else if(milksolids >= 10 && milkfat >= 3) {
        "2".writeln;
    } else if(milksolids >= 3) {
        "3".writeln;
    } else {
        "4".writeln;
    }
}
