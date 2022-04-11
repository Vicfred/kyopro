-- uninhm
-- https://atcoder.jp/contests/abc246/tasks/abc246_b
-- math, geometry

solve :: [Double] -> [Double]
solve [a, b] =
  [ cos alpha
  , sin alpha
  ]
    where alpha = atan2 b a

main :: IO ()
main = getLine >>= putStrLn
  . unwords
  . map show
  . solve
  . map read
  . words
