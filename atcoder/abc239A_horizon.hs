-- uninhm
-- https://atcoder.jp/contests/abc239/tasks/abc239_a
-- implementation

solve :: Double -> Double
solve x = sqrt $ x * (12800000 + x)

main :: IO ()
main = getLine >>= print . solve . read
