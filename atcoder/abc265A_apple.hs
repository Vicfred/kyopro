-- uninhm
-- https://atcoder.jp/contests/abc265/tasks/abc265_a
-- implementation

main :: IO ()
main = do
  [x, y, n] <- map read . words <$> getLine
  print $ min (n `div` 3 * y + n `mod` 3 * x) (n * x)
