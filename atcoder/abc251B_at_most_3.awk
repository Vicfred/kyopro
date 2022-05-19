# uninhm
# https://atcoder.jp/contests/abc251/tasks/abc251_b
# brute force

NR % 2 == 1 { n = $1; w = $2 }
NR % 2 == 0 {
  split($0, a)
  a[0] = 0
  delete checked
  for (i = 1; i <= n; i++) {
    if (a[i] > w) continue
    checked[a[i]] = 1
    for (j = i+1; j <= n; j++) {
      if (a[i] + a[j] > w) continue
      checked[a[i] + a[j]] = 1
      for (k = j+1; k <= n; k++) {
        if (a[i] + a[j] + a[k] > w) continue
        checked[a[i] + a[j] + a[k]] = 1
      }
    }
  }
  print length(checked)
}
