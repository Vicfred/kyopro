-- vicfred
-- https://atcoder.jp/contests/abc229/tasks/abc229_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = do
  s1 <- getLine
  s2 <- getLine
  if f s1 s2 then
    putStrLn "Yes"
  else
    putStrLn "No"

f :: String -> String -> Bool
f ".#" "#." = False
f "#." ".#" = False
f _    _    = True
