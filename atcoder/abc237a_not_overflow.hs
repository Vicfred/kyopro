-- vicfred
-- https://atcoder.jp/contests/abc237/tasks/abc237_a
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  if n >= (-2)^31 && n < 2^31 then
    putStrLn "Yes"
  else
    putStrLn "No"
