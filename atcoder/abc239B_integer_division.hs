-- uninhm
-- https://atcoder.jp/contests/abc239/tasks/abc239_b
-- implementation

solve :: Int -> Int
solve x = x `div` 10

main :: IO ()
main = getLine >>= print . solve . read
