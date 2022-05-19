-- uninhm
-- https://atcoder.jp/contests/abc239/tasks/abc239_d
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

import Data.Bool (bool)

primes :: [Int]
primes = go [2..] where
  go (x:xs) = x : go (filter (\y -> y `mod` x /= 0) xs)

primeSet :: Set Int
primeSet = S.fromAscList $ takeWhile (< 200) primes

main :: IO ()
main = do
  [a, b, c, d] <- map read . words <$> getLine
  putStrLn
    $ bool "Takahashi" "Aoki"
    $ all id $ map (f c d) [a..b]
      where f c d x = any (`S.member` primeSet) [x+y | y <- [c..d]]
