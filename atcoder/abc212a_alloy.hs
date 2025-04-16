-- vicfred
-- https://atcoder.jp/contests/abc212/tasks/abc212_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  if b == 0 then
    putStrLn "Gold"
  else if a == 0 then
    putStrLn "Silver"
  else
    putStrLn "Alloy"
