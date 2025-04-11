-- vicfred
-- https://atcoder.jp/contests/abc352/tasks/abc352_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = do
  [n, x, y, z] <- map read . words <$> getLine :: IO [Int]
  putStrLn . bool "No" "Yes" $ (z `elem` [min x y..max x y])
