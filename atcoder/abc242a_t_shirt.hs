-- vicfred
-- https://atcoder.jp/contests/abc242/tasks/abc242_a
-- implementation, probability
import Text.Printf (printf)

main :: IO ()
main = do
  [a, b, c, x] <- map read . words <$> getLine :: IO [Double]
  if x <= a then
    printf "1"
  else if x > b then
    printf "0"
  else
    printf "%.12f\n" (c / (b - a))
