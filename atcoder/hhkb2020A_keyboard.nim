import strutils

let s, t = stdin.readLine.strip

if s == "Y":
  echo t.toUpper()
else:
  echo t
