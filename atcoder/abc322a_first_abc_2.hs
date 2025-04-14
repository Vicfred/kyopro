-- vicfred
-- https://atcoder.jp/contests/abc322/tasks/abc322_a
-- implementation
import Data.List (findIndex)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  getLine
  s <- getLine
  print $ (\x -> if x /= -1 then x + 1 else x) . fromMaybe (-1) . findIndex (== ('A','B','C')) $ zip3 s (tail s) (tail(tail s))
