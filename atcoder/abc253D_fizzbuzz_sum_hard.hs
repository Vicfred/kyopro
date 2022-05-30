-- uninhm
-- https://atcoder.jp/contests/abc253/tasks/abc253_d
-- gauss

gauss :: Int -> Int
gauss n = n*(n+1) `div` 2

solve :: [Int] -> Int
solve [n, a, b] = gauss n - f a - f b + f (lcm a b)
  where f x = x * gauss (n `div` x)
solve _ = error "invalid input"

main :: IO ()
main = getLine >>= print . solve . map read . words
