-- vicfred
-- https://atcoder.jp/contests/abc406/tasks/abc406_a
-- implementation
main :: IO ()
main = do
  [a, b, c, d] <- map read . words <$> getLine :: IO [Int]
  if a == c then
    if b > d then
      putStrLn "Yes"
    else
      putStrLn "No"
  else if a < c then
      putStrLn "No"
  else
      putStrLn "Yes"
