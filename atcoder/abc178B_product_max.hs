-- uninhm
-- https://atcoder.jp/contests/abc178/tasks/abc178_b
-- math

main = do
  li <- getLine
  let a:b:c:d:[] = map read $ words li :: [Integer]
  print $ foldl max (-10000000000000000001) [a * c, a * d, b * c, b * d]

