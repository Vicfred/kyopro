-- vicfred
-- https://atcoder.jp/contests/abc234/tasks/abc234_a
-- implementation
main :: IO ()
main = getLine >>= print . (\t -> f(f(f(t) + t) + f(f(t)))) . read

f :: Int -> Int
f x = x^2 + 2*x + 3
