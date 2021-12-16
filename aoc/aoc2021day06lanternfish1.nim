import sequtils, strutils

var numbers = stdin.readLine.split(",").map parseInt
var lanternfish = numbers
for day in 1..80:
  var lanterns : seq[int]
  for n in numbers:
    if n == 0:
      lanterns.add(6)
      lanterns.add(8)
    else:
      lanterns.add(n - 1)
  numbers = lanterns
echo numbers.len
