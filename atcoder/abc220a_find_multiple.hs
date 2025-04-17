-- vicfred
-- https://atcoder.jp/contests/abc220/tasks/abc220_a
main :: IO ()
main = do
  [a, b, c] <- map read . words <$> getLine :: IO [Int]
  let d = (b `div` c) * c
  if a <= d then
    print d
  else
    print (-1)
