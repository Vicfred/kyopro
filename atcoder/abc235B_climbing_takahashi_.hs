-- uninhm
-- https://atcoder.jp/contests/abc235/tasks/abc235_b
-- implementation

solve :: [Int] -> Int
solve [h] = h
solve (h1:h2:hs)
  | h1 < h2 = solve (h2:hs)
  | otherwise = h1

main :: IO ()
main = getLine >> getLine >>= print . solve . map read . words
