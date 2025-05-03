-- vicfred
-- https://atcoder.jp/contests/abc240/tasks/abc240_a
-- implementation
import Data.List (sort)
import Data.Bool (bool)

main :: IO ()
main = do
  [a, b] <- sort . map read . words <$> getLine :: IO [Int]
  if a == 1 && b == 10 || (b - a) == 1 then
    putStrLn "Yes"
  else
    putStrLn "No"
