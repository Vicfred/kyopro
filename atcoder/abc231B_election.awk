# uninhm
# https://atcoder.jp/contests/abc231/tasks/abc231_b
# implementation

NR > 1 { m[$1]++ }
END {
  for (k in m)
    if (m[k] > m[ans]) ans = k;
  print ans
}
