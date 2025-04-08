-- vicfred
-- https://projecteuler.net/problem=26
-- implementation
import Data.List

nums :: [Integer]
nums = [n | n <- [3,5..], n `mod` 5 /= 0]

period :: Integer -> Integer
period n = head $ [p | p <- [1..], (10^p - 1) `mod` n == 0]

main :: IO ()
main = print
      .fst
      .maximumBy (\(_,a) (_,b) -> compare a b)
      . map (\n -> (n,period n))
      $ takeWhile (<1000) nums
