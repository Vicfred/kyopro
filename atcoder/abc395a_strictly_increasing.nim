import sequtils, strutils

proc strictlyIncreasing(a: seq[int]): bool =
  for i in 0..<a.len-1:
    if a[i] >= a[i + 1]:
      return false
  return true

when isMainModule:
  let n = stdin.readLine.parseInt
  let a = stdin.readLine.split.map(parseInt)
  echo if strictlyIncreasing(a): "Yes" else: "No"
