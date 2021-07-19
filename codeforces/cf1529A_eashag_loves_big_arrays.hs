-- uninhm
-- https://codeforces.com/contest/1529/problem/A
-- greedy

evens (x:xs) = x:odds xs
evens _ = []

odds (_:xs) = evens xs
odds _ = []

solution :: [Int] -> String
solution a =
  show $ length a - (length . filter (== minimum a)) a

main = interact $ unlines . map (solution . map read . words) . odds . tail . lines
