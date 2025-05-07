-- vicfred
-- https://atcoder.jp/contests/abc253/tasks/abc253_a
-- implementation
import Data.List (sort)

main :: IO ()
main = do
  [a, b, c] <- map read . words <$> getLine :: IO [Int]
  let sorted = sort [a, b, c]
  if b == sorted !! 1 then
    putStrLn "Yes"
  else
    putStrLn "No"
