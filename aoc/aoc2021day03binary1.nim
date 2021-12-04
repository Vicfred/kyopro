# Vicfred
# https://adventofcode.com/2021/day/3
import bitops
let f = open("input")

var report = newSeq[string]()

var line : string
while f.read_line(line):
  report.add(line)

let n = len(report)
let m = len(report[0])

var gamma, epsilon : int
for j in 0..<m:
  var ones : int
  for i in 0..<n:
    if report[i][j] == '1':
      ones += 1
  if ones >= n - ones:
    gamma.setBit(m - j - 1)
  else:
    epsilon.setBit(m - j - 1)
echo gamma * epsilon
