import Data.Bool (bool)
-- vicfred
-- https://atcoder.jp/contests/abc312/tasks/abc312_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . (`elem` ["ACE", "BDF", "CEG", "DFA", "EGB", "FAC", "GBD"])
