# uninhm
# https://atcoder.jp/contests/abc223/tasks/abc223_b
# implementation, brute force

function shift(s) {
  return substr(s, 2) substr(s, 1, 1)
}

{
  s = $0
  min = s
  max = s
  s = shift(s);
  while (s != $0) {
    if (s < min)
      min = s
    if (s > max)
      max = s
    s = shift(s)
  }
  print min
  print max
}
