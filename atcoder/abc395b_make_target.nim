import strutils, sequtils

proc createGrid(n: int) =
  var grid = newSeqWith(n + 1, newSeqWith(n + 1, '#'))
  
  for i in 1..n:
    let j = n + 1 - i
    if i <= j:
      for k in i..j:
        for l in i..j:
          if i mod 2 == 1:
            grid[k][l] = '#'
          else:
            grid[k][l] = '.'
  
  for i in 1..n:
    echo grid[i][1..n].join("")

when isMainModule:
  let n = parseInt(readLine(stdin))
  createGrid(n)
