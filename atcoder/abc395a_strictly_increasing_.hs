-- vicfred
-- https://atcoder.jp/contests/abc395/tasks/abc395_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn . bool "No" "Yes" . foldr (&&) True $ zipWith (<) (init a) (tail a)
