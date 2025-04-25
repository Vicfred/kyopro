-- vicfred
-- https://atcoder.jp/contests/abc233/tasks/abc233_a
-- implementation
main :: IO ()
main = do
  [x, y] <- map read . words <$> getLine :: IO [Double]
  if x - y >= 0 then
    print 0
  else
    print . ceiling $ ((y - x) / 10)
