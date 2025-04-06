-- vicfred
-- https://projecteuler.net/problem=12
-- primes
import Data.List (group)

sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs) = x : (sieve (filter ((/=0) . (`mod` x)) xs))

primes :: [Integer]
primes = sieve [2..]

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = factor : primeFactors (n `div` factor)
  where
    factor   = head (filter evenly primes)
    evenly x = n `rem` x == 0

divisorCount :: Integer -> Int
divisorCount = product . map ((1+) . length) . group . primeFactors

triangles :: [Integer]
triangles = 1 : zipWith (+) [2..] triangles

main :: IO ()
main = print $ fst . head . filter ((>500) . snd) $ map (\x -> (x, divisorCount x)) triangles
