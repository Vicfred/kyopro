# vicfred
# https://adventofcode.com/2021/day/3#part2
import strutils

proc mostCommon(s: seq[string], idx: int): int =
  var n = len(s)
  var ones : int
  for i in 0..<n:
    if s[i][idx] == '1':
      ones += 1
  if ones > n - ones:
    result = 1
  elif ones == n - ones:
    result = -1
  else:
    result = 0

let f = open("input")

var oxygen = newSeq[string]()

var line : string
while f.read_line(line):
  oxygen.add(line)

var co2 = oxygen

let m = len(oxygen[0])

var idx : int
while len(oxygen) > 1:
  if idx >= m:
    break
  var common = mostCommon(oxygen, idx)
  if common == -1:
    common = 1
  var new_oxygen = newSeq[string]()
  for i in 0..<len(oxygen):
    if parseInt($oxygen[i][idx]) == common:
      new_oxygen.add(oxygen[i])
  oxygen = new_oxygen
  idx += 1
echo fromBin[int](oxygen[0])

idx = 0
while len(co2) > 1:
  if idx >= m:
    break
  var lcommon = mostCommon(co2, idx)
  if lcommon == -1:
    lcommon = 0
  else:
    lcommon = 1 - lcommon
  var new_co2 = newSeq[string]()
  for i in 0..<len(co2):
    if parseInt($co2[i][idx]) == lcommon:
      new_co2.add(co2[i])
  co2 = new_co2
  idx += 1
echo fromBin[int](co2[0])

echo fromBin[int](oxygen[0]) * fromBin[int](co2[0])
