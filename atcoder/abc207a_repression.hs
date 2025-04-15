-- vicfred
-- https://atcoder.jp/contests/abc207/tasks/abc207_a
-- implementation
import Data.List (sort)

main :: IO ()
main = getLine >>= print . sum . take 2 . reverse . sort . map read . words
