-- vicfred
-- https://projecteuler.net/problem=32
-- brute force
import Data.List (nub, sort)

isPandigit :: Int -> Int -> Bool
isPandigit m n = (=="123456789") . sort $ show m ++ show n ++ show (m*n)

main :: IO ()
main = print $ sum . nub $ [x*y | x <- [1..50], y <- [1..2000], isPandigit x y]
