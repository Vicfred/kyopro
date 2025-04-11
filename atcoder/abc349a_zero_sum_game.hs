-- vicfred
-- https://atcoder.jp/contests/abc349/tasks/abc349_a
-- implementation
main :: IO ()
main = getContents >>= print .negate
                             .sum
                             .map read
                             .drop 1
                             .words
