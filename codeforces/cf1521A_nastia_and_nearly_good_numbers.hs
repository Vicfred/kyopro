-- user: nel_tu_
-- path: https://codeforces.com/contest/1521/problem/A
-- tags: math

solve [_, 1] = Nothing
solve [a, b] = Just [a, a*b, a*b + a]


input = map (map read . words) . tail . lines
output = maybe "NO" $ ("YES\n" ++) . unwords . map show

main = interact $ unlines . map (output . solve) . input

