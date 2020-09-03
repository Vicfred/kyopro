-- unihernandez22
-- https://atcoder.jp/contests/abc132/tasks/abc132_a
-- implementation

main = do
  s <- getLine
  let a:b:c:d:[] = s
  putStrLn $
    if (a /= b || a /= c || a /= d) && (
       a == b && c == d ||
       a == c && b == d ||
       a == d && b == c ) then
      "Yes"
    else
      "No"

