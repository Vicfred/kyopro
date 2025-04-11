-- vicfred
-- https://atcoder.jp/contests/abc355/tasks/abc355_a
-- implementation
import Data.List ((\\))

main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ if a == b then -1 else head ([1..3] \\ [a,b])
