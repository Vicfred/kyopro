-- vicfred
-- https://atcoder.jp/contests/abc214/tasks/abc214_a
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  if n <= 125 then
    print 4
  else if n <= 211 then
    print 6
  else
    print 8
