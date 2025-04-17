-- vicfred
-- https://codeforces.com/problemset/problem/4/A

f :: Int -> String
f x
    | x == 2 = "NO"
    | even x = "YES"
    | otherwise = "NO"

main :: IO ()
main = interact $ f . read

