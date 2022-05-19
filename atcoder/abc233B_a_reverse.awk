# uninhm
# https://atcoder.jp/contests/abc233/tasks/abc233_b
# implementation

function reverse(s) {
  "echo '" s "' | rev" | getline res
  return res
}

NR == 1 { l = $1; r = $2 }
NR == 2 {
  print substr($0, 1, l-1) reverse(substr($0, l, r-l+1)) substr($0, r+1)
}
