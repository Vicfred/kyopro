-- vicfred
-- https://atcoder.jp/contests/abc201/tasks/abc201_a
-- implementation
import Data.List (permutations)
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn .bool "No" "Yes"
                            .any (\[x, y, z] -> z - y == y - x)
                            .permutations
                            .map (read @Int)
                            .words
