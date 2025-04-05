-- vicfred
-- https://projecteuler.net/problem=3
-- sieve, primes
sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs) = x : (sieve (filter ((/=0) . (`mod` x)) xs))

primes :: [Integer]
primes = sieve [2..]

findLargestPrimeFactor :: Integer -> [Integer] -> Integer
findLargestPrimeFactor 1 (x:xs) = x
findLargestPrimeFactor n (x:xs) | n `mod` x == 0 = findLargestPrimeFactor (n `div` x) (x:xs)
                                | otherwise = findLargestPrimeFactor n xs

main :: IO ()
main = print $ findLargestPrimeFactor 317584931803 primes
