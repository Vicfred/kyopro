-- vicfred
-- https://atcoder.jp/contests/abc311/tasks/abc311_a
-- implementation
import Data.List (elemIndex)
import Data.Maybe (fromMaybe)

main :: IO ()
main = do
  _ <- getLine
  s <- getLine
  print . (+1) . maximum $ (map (f s) "ABC")

f :: String -> Char -> Int
f s x = fromMaybe 0 (elemIndex x s)
