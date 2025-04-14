-- vicfred
-- https://atcoder.jp/contests/abc317/tasks/abc317_a
-- implementation
import Data.List (findIndex)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  [n, h, x] <- map read . words <$> getLine :: IO [Int]
  p <- map read . words <$> getLine :: IO [Int]
  print . (+1) . fromMaybe (n - 1) . findIndex ((>=x) . (+h)) $ p
