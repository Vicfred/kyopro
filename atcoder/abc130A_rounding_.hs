-- uninhm
-- https://atcoder.jp/contests/abc130/tasks/abc130_a
-- implementation

solve :: [Int] -> Int
solve [x, a] = if x < a then 0 else 10

main :: IO ()
main = interact $ show . solve . map read . words
