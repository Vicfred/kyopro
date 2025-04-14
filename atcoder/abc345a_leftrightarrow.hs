-- vicfred
-- https://atcoder.jp/contests/abc345/tasks/abc345_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = do
  s <- getLine
  putStrLn $ bool "No" "Yes" $ s == "<" ++ replicate (length s - 2) '=' ++ ">"
