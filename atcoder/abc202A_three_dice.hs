-- uninhm
-- https://atcoder.jp/contests/abc202/tasks/abc202_a
-- implementation

main :: IO ()
main = getLine >>= print
  . sum
  . map ((7 -) . read)
  . words
