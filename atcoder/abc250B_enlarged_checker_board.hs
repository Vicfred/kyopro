-- uninhm
-- https://atcoder.jp/contests/abc250/tasks/abc250_b
-- implementation

line :: Int -> Int -> Int -> Int -> String
line n a b i = id
  . concat
  . take n
  . drop (i `div` a `mod` 2)
  $ cycle [replicate b '.', replicate b '#']

solve :: [Int] -> String
solve [n, a, b] =
  unlines $ map (line n a b) [0 .. (a*n-1)]

main :: IO ()
main = getLine >>= putStr . solve . map read . words
