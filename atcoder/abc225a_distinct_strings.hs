-- vicfred
-- https://atcoder.jp/contests/abc225/tasks/abc225_a
-- implementation
import Data.List (nub, permutations)

main :: IO ()
main = getLine >>= print . length . nub . permutations
