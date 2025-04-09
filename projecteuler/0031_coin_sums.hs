-- vicfred
-- https://projecteuler.net/problem=31
-- dynamic programming, combinatorics
main :: IO ()
main = print $ count [200,100,50,20,10,5,2,1] 200

count :: [Integer] -> Integer -> Integer
count _ 0      = 1
count [c] _    = 1
count (c:cs) s = sum $ map (count cs . (s-)) [0,c..s]
