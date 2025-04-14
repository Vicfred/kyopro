-- vicfred
-- https://atcoder.jp/contests/abc309/tasks/abc309_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn .bool "No" "Yes"
                         .(\[a, b] -> (b - a == 1) && (a `mod` 3 /= 0))
                         .map (read @Int)
                         .words
