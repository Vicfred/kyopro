-- uninhm
-- https://atcoder.jp/contests/abc248/tasks/abc248_b
-- implementation, recursion

solve :: [Int] -> Int
solve [a, b, k]
  | a >= b = 0
  | otherwise = 1 + solve [a*k, b, k]

main :: IO ()
main = getLine >>= print . solve . map read . words
