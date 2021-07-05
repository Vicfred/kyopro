-- uninhm
-- https://codeforces.com/contest/1525/problem/A
-- basic math

solve :: String -> String -- Read the whole input, return the whole output
solve = unlines . fmap (show . div 100 . gcd 100 . read) . tail . lines

main :: IO ()
main = interact $ solve
