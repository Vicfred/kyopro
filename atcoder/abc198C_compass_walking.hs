-- uninhm
-- https://atcoder.jp/contests/abc198/tasks/abc198_c
-- math

main :: IO ()
main = do
  [r, x, y] <- map read . words <$> getLine
  let dist = sqrt (x^2 + y^2)
  if r > dist then print 2
  else
    print $ ceiling $ sqrt (x^2 + y^2) / r
