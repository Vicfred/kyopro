-- vicfred
-- https://atcoder.jp/contests/abc386/tasks/abc386_a
-- implementation
import Data.List
import Data.Bool

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . (==2) . length . nub . map (read @Int) . words
