-- vicfred
-- https://atcoder.jp/contests/abc259/tasks/abc259_a
-- implementation
main :: IO ()
main = do
  [n, m, x, t, d] <- map read . words <$> getLine :: IO [Int]
  let f
        | m <= x = t - d * (x - m)
        | otherwise = t
  print $ f
