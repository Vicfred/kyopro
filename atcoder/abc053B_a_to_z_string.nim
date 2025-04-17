# vicfred
# https://atcoder.jp/contests/abc053/tasks/abc053_b
# string manipulation
import algorithm
import strutils

var s = stdin.readLine.strip
let ini = s.find('A')

s.reverse
let fin = s.find('Z')

let ans = s.len - ini - fin
ans.echo

