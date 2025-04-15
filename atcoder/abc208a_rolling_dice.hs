-- vicfred
-- https://atcoder.jp/contests/abc208/tasks/abc208_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  if a <= b && b <= 6 * a then
    putStrLn "Yes"
  else
    putStrLn "No"
