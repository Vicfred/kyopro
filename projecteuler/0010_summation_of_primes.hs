-- vicfred
-- https://projecteuler.net/problem=10
-- sieve, primes
isPrime :: Integer -> Bool
isPrime n
  | n <= 1    = False
  | n <= 3    = True
  | even n    = False
  | otherwise = not $ any (\x -> n `mod` x == 0) [3,5..isqrt n]
  where
    isqrt = floor . sqrt . fromIntegral

main = print . sum . filter isPrime $ [2..2000000]
