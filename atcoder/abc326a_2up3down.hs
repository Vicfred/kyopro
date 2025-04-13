-- vicfred
-- https://atcoder.jp/contests/abc326/tasks/abc326_a
-- implementation
main :: IO ()
main = do
  [x, y] <- map read . words <$> getLine :: IO [Int]
  if (y > x && y - x <= 2) || (x > y && x - y <= 3) then
    putStrLn "Yes"
  else
    putStrLn "No"
