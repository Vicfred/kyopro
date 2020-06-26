-- Vicfred
-- https://codeforces.com/problemset/problem/1/A
-- math
main :: IO ()
main = do
    [n, m, a] <- map read <$> words <$> getLine
    putStrLn $ show $ ceiling(n/a) * ceiling(m/a)

