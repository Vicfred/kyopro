-- uninhm
-- https://atcoder.jp/contests/abc265/tasks/abc265_d
-- binary search, accumulation

import Data.Array.IArray
import Data.Maybe (isJust)
import Data.Bool (bool)

binarySearch :: Ord a => Array Int a -> a -> Maybe Int
binarySearch a x = go 0 (length a) where
  go l r
    | elem == x = Just l
    | l == r    = Nothing
    | elem < x  = go (mid+1) r
    | otherwise = go l mid
    where mid = (l + r) `div` 2
          elem = a ! mid

getInts :: IO [Int]
getInts = map read . words <$> getLine

accumulate :: [Int] -> [Int]
accumulate l = reverse $ go l [0] where
  go [] res = res
  go (x:l) (y:res) = go l $ (x+y):y:res

solve :: (Int, Int, Int) -> Array Int Int -> Int -> Maybe ()
solve (p, q, r) a w = do
  binarySearch a (a!w - r)
  binarySearch a (a!w - r - q)
  binarySearch a (a!w - r - q - p)
  pure ()

main :: IO ()
main = do
  [n, p, q, r] <- getInts
  a <- listArray (0,n) . accumulate <$> getInts
  putStrLn $ bool "No" "Yes" $ any isJust $ map (solve (p, q, r) a) [3..n]
