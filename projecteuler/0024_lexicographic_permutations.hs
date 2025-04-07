-- vicfred
-- https://projecteuler.net/problem=24
-- permutations
import Data.List

permutate :: (Eq a) => [a] -> [[a]]
permutate [] = [[]]
permutate l = [a:x | a <- l, x <- (permutate $ delete a l)]

main :: IO ()
main = putStrLn $ (permutate ['0'..'9']) !! 999999
