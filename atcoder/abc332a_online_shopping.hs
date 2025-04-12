-- vicfred
-- https://atcoder.jp/contests/abc332/tasks/abc332_a
-- implementation
import Data.List (transpose)
import Control.Monad (replicateM)

main :: IO ()
main = do
  [n, s, k] <- map read . words <$> getLine :: IO [Int]
  [ps, qs] <- transpose <$> replicateM n (map read . words <$> getLine) :: IO [[Int]]
  let products = sum $ zipWith (*) ps qs
  if products < s then print (products + k) else print products
