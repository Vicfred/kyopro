-- vicfred
-- https://atcoder.jp/contests/abc219/tasks/abc219_a
-- implementation
main :: IO ()
main = do
  x <- read <$> getLine :: IO Int
  if x >= 0 && x < 40 then
    print $ 40 - x
  else if x >= 40 && x < 70 then
    print $ 70 - x
  else if x >= 70 && x < 90 then
    print $ 90 - x
  else
    putStrLn "expert"
