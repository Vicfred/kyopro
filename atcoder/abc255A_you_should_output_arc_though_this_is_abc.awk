# uninhm
# https://atcoder.jp/contests/abc255/tasks/abc255_a
# implementation

NR == 1 { r = $1; c = $2; next }
{ split($0, b); for (k in b) a[NR-1][k] = b[k] }
END { print a[r][c] }
