-- uninhm
-- https://atcoder.jp/contests/abc261/tasks/abc261_a
-- implementation

solve [l1, r1, l2, r2] = max len 0
  where len = min r1 r2 - max l1 l2
solve _ = error "Invalid input"

main :: IO ()
main = getLine >>= print . solve . map read . words
