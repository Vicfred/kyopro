-- vicfred
-- https://atcoder.jp/contests/abc218/tasks/abc218_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  s <- getLine
  if s !! (n - 1) == 'o' then
    putStrLn "Yes"
  else
    putStrLn "No"
