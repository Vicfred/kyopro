# uninhm
# https://atcoder.jp/contests/abc224/tasks/abc224_b
# implementation

NR == 1 { h = $1; w = $2 }
NR > 1 {
  split($0, row)
  for (i = 1; i <= w; i++)
    a[i, NR-1] = row[i]
}
END {
  is_ok = 1
  for (i1 = 1; i1 <= h; i1++)
  for (i2 = i1; i2 <= h; i2++)
  for (j1 = 1; j1 <= w; j1++)
  for (j2 = j1; j2 <= w; j2++)
    is_ok = is_ok &&\
     a[j1, i1] + a[j2, i2] <= a[j1, i2] + a[j2, i1]
  if (is_ok)
    print "Yes"
  else
    print "No"
}
