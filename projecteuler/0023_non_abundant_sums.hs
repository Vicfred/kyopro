-- vicfred
-- https://projecteuler.net/problem=23
-- divisors, sums
import Data.List
import Data.IntSet (toList, fromList)

divisors :: Int -> [Int]
divisors n = 1 : filter ((== 0) . rem n) [2..n `div` 2]

sumProperDivisors :: Int -> Int
sumProperDivisors = sum . divisors

abundants :: [Int]
abundants = filter (\x -> x < sumProperDivisors x) [12..20149]

sums :: [Int]
sums = [(x + y) | x <- abundants, y <- abundants, y >= x, (x + y) < 20162]

main :: IO ()
main = print $ sum [1..20161] - (sum $ (toList . fromList) sums)
