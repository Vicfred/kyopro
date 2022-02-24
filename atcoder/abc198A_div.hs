-- uninhm
-- https://atcoder.jp/contests/abc198/tasks/abc198_a
-- implementation

main :: IO ()
main = getLine >>= print . subtract 1 . read
