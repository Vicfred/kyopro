-- vicfred
-- https://atcoder.jp/contests/abc344/tasks/abc344_a
-- implementation
import Data.List.Split (splitOn)

main :: IO ()
main = do
  s <- getLine
  let tokens = splitOn "|" s
  putStrLn $ head tokens ++ last tokens
