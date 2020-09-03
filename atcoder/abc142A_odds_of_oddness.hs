-- unihernandez22
-- https://atcoder.jp/contests/abc142/tasks/abc142_a
-- basic probability

main = do
  li <- getLine
  let n  = (read li)
  putStrLn.show $
    (fromIntegral $ floor $ (n + 1) / 2) / n
