-- vicfred
-- https://atcoder.jp/contests/abc228/tasks/abc228_a
-- implementation
main :: IO ()
main = do
  [s, t, x] <- map read . words <$> getLine :: IO [Int]
  if s < t then
    if x >= s && x < t then
      putStrLn "Yes"
    else
      putStrLn "No"
  else
    if x >= s || x < t then
      putStrLn "Yes"
    else
      putStrLn "No"
