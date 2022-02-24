-- uninhm
-- https://atcoder.jp/contests/abc192/tasks/abc192_a
-- implementation

main :: IO ()
main = getLine >>= print
  . (\x -> 100 - mod x 100)
  . read
