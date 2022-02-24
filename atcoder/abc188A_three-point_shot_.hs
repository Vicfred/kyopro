-- uninhm
-- https://atcoder.jp/contests/abc188/tasks/abc188_a
-- implementation

import Data.Bool (bool)

main :: IO ()
main = do
  [x, y] <- map read . words <$> getLine
  putStrLn . bool "No" "Yes" $ abs (x - y) < 3
