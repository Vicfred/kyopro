import Data.List (isInfixOf)
import Data.Bool (bool)
-- vicfred
-- https://atcoder.jp/contests/abc327/tasks/abc327_a
-- implementation
main :: IO ()
main = do
  getLine
  s <- getLine
  if isInfixOf "ab" s || isInfixOf "ba" s then
    putStrLn "Yes"
  else
    putStrLn "No"
