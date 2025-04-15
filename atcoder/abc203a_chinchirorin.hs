-- vicfred
-- https://atcoder.jp/contests/abc203/tasks/abc203_a
-- implementation
import Data.List (sort)

main :: IO ()
main = getLine >>= print .(\[x, y, z] -> if x == y then z else if y == z then x else 0)
                         .sort
                         .map (read @Int)
                         .words
