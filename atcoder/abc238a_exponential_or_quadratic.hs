-- vicfred
-- https://atcoder.jp/contests/abc238/tasks/abc238_a
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  if n > 5 then
    putStrLn "Yes"
  else if 2^n > n^2 then
    putStrLn "Yes"
  else
    putStrLn "No"
