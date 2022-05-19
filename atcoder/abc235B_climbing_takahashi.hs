-- uninhm
-- https://atcoder.jp/contests/abc235/tasks/abc235_b
-- implementation

solve :: [Int] -> Int
solve h = snd $ last $ takeWhile f $ zip (0:h) h
  where f (x,y) = x < y

main :: IO ()
main = getLine >> getLine >>= print . solve . map read . words
