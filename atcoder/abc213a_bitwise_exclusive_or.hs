-- vicfred
-- https://atcoder.jp/contests/abc213/tasks/abc213_a
-- implementation
import Data.Bits (xor)
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print . head $ filter ((== b) . (a `xor`)) [0..255]
