import strutils

let x = parseFloat(readLine(stdin))

if x >= 38.0:
  echo 1
elif x >= 37.5:
  echo 2
else:
  echo 3
