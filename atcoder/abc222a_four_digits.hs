-- vicfred
-- https://atcoder.jp/contests/abc222/submissions/49049668
-- implementation
main :: IO ()
main = do
  n <- getLine
  putStrLn $ replicate (4 - length n) '0' ++ n
