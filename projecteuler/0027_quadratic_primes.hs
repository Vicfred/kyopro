-- vicfred
-- https://projecteuler.net/problem=27
-- primes
import Data.List

isPrime :: Int -> Bool
isPrime n
  | n <= 1    = False
  | n <= 3    = True
  | even n    = False
  | otherwise = not $ any (\x -> n `mod` x == 0) [3,5..isqrt n]
  where
    isqrt = floor . sqrt . fromIntegral

primes :: [Int]
primes = filter isPrime [2..]

quadratic :: Int -> Int -> Int -> Int
quadratic a b n = n^2 + a * n + b

evalInterval :: Int -> Int -> [Int]
evalInterval a b = map (quadratic a b) [0..]

main = print $ (\(x, y, z) -> x*y)
            <$> maximumBy (\(a,b,c) (a',b',c') -> compare (length c) (length c'))
            $ [(a,b, takeWhile isPrime (evalInterval a b))
              | a <- [-999..999],
              b <- takeWhile (< 1000) primes,
              isPrime (a + b + 1)]
