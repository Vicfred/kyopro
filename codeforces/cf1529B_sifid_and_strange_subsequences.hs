-- uninhm
-- https://codeforces.com/contest/1529/problem/B
-- greedy

import Data.List (sort)

odds (x:xs) = x : evens xs
odds [] = []

evens (_:xs) = odds xs
evens [] = []

(.>) = flip (.)
infixl 8 .>

firstdiff [x] = x
firstdiff (x:y:_) = y - x

solve l = go (length l) (firstdiff $ map snd l) l where
  go n mindiff (x':y':xs)
    | y > 0 && y <= mindiff = fst y'
    | y > 0 = fst x'
    | otherwise = go n (min mindiff (y-x)) (y':xs)
      where
        y = snd y'
        x = snd x'

  go n mindiff [x] = n

main = interact $ lines
  .> tail
  .> evens
  .> map (show . solve . zip [1..] . sort . map read . words)
  .> unlines
