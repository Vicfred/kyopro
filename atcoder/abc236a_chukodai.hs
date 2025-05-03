-- vicfred
-- https://atcoder.jp/contests/abc236/tasks/abc236_a
-- implementation
main :: IO ()
main = do
  s <- getLine
  [a, b] <- map read . words <$> getLine :: IO [Int]
  putStrLn $ take (a - 1) s ++ [s !! (b - 1)] ++ drop a (take (b - 1) s) ++ [s !! (a - 1)] ++ drop b s
