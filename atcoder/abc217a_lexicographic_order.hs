-- vicfred
-- https://atcoder.jp/contests/abc217/tasks/abc217_a
-- implementation
main :: IO ()
main = do
  [s, t] <- words <$> getLine
  if s < t then
    putStrLn "Yes"
  else
    putStrLn "No"
