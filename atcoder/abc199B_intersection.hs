-- uninhm
-- https://atcoder.jp/contests/abc199/tasks/abc199_b
-- greedy

getInts :: IO [Int]
getInts = map read . words <$> getLine

main :: IO ()
main = do
  _ <- getLine
  a <- getInts
  b <- getInts

  print $ max 0 $ minimum b - maximum a + 1
