-- uninhm
-- https://atcoder.jp/contests/abc208/tasks/abc208_c
-- implementation

import Data.List (sort)

getInts :: IO [Int]
getInts = map read . words <$> getLine

solve n k a =
  flip map a $ \i ->
    if i < x then
      y + 1
    else
      y
    where x = sort a !! mod k n
          y = k `div` n

main = do
  [n, k] <- getInts
  a <- getInts
  putStr . unlines . map show $ solve n k a
