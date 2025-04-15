-- vicfred
-- https://atcoder.jp/contests/abc301/tasks/abc301_a
-- implementation
main :: IO ()
main = do
  _ <- getLine
  s <- getLine
  putStrLn $ f s

f :: String -> String
f s
  | takahashi > aoki = "T"
  | takahashi < aoki = "A"
  | last s == 'T' = "A"
  | otherwise = "T"
  where
    takahashi = length [x | x <- s, x == 'T']
    aoki = length [x | x <- s, x == 'A']
