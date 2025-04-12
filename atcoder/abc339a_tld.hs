import Data.List.Split (splitOn)
-- vicfred
-- https://atcoder.jp/contests/abc339/tasks/abc339_a
-- implementation
main :: IO ()
main = do
  s <- getLine
  putStrLn . last $ splitOn "." s
