-- vicfred
-- https://atcoder.jp/contests/abc336/tasks/abc336_a
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  putStrLn $ "L" ++ (replicate n 'o') ++ "ng"
