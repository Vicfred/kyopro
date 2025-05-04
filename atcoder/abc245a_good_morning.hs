-- vicfred
-- https://atcoder.jp/contests/abc245/tasks/abc245_a
-- implementation
main :: IO ()
main = do
  [a, b, c, d] <- map read . words <$> getLine :: IO [Int]
  if a > c then
    putStrLn "Aoki"
  else if a < c then
    putStrLn "Takahashi"
  else
    if b > d then
      putStrLn "Aoki"
    else
      putStrLn "Takahashi"
