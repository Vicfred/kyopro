-- vicfred
-- https://projecteuler.net/problem=7
-- primes, sieve
sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs) = x : (sieve (filter ((/=0) . (`mod` x)) xs))

primes :: [Integer]
primes = sieve [2..]

main = print $ primes !! 10000
