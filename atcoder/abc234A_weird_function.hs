-- uninhm
-- https://atcoder.jp/contests/abc234/tasks/abc234_a
-- implementation

f :: Int -> Int
f x = x ^ 2 + 2 * x + 3

solve :: Int -> Int
solve t = f (f (f t + t) + f (f t))

main :: IO ()
main = readLn >>= print . solve
