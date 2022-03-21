-- uninhm
-- https://atcoder.jp/contests/abc200/tasks/abc200_b
-- implementation

main = getLine >>= print . solve . map read . words

solve :: [Int] -> Int
solve [n, k] = iterate go n !! k
  where
    go :: Int -> Int
    go n | n `mod` 200 == 0 = n `div` 200
         | otherwise        = n * 1000 + 200
