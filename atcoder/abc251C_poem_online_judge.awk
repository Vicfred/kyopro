# uninhm
# https://atcoder.jp/contests/abc251/tasks/abc251_c
# implementation

NR > 1 {
  s = $1; t = $2
  if (!(s in val)) {
    val[s] = t
    idx[s] = NR-1
  }
}
END {
  ans = -1; max = 0
  for (elem in val)
    if (val[elem] > max || val[elem] == max && idx[elem] < ans) {
      max = val[elem]
      ans = idx[elem]
    }
  print ans
}
