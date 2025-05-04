-- vicfred
-- https://atcoder.jp/contests/abc250/tasks/abc250_a
-- implementation
main :: IO ()
main = do
  [h, w] <- map read . words <$> getLine :: IO [Int]
  [r, c] <- map read . words <$> getLine :: IO [Int]
  let up = if r > 1 then 1 else 0
      down = if r < h then 1 else 0
      left = if c < w then 1 else 0
      right = if c > 1 then 1 else 0
  print $ up + down + left + right
