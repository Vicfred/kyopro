-- vicfred
-- https://atcoder.jp/contests/abc334/tasks/abc334_a
-- implementation
main :: IO ()
main = do
  [b, g] <- map read . words <$> getLine :: IO [Int]
  if b > g then putStrLn "Bat" else putStrLn "Glove"
