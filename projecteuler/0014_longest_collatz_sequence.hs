-- vicfred
-- https://projecteuler.net/problem=14
-- collatz
import Data.List (maximumBy)

collatz :: Integer -> [Integer]
collatz 1 = [1]
collatz n | even n = n : collatz (n `div` 2)
          | otherwise = n : collatz (3 * n + 1)

main :: IO ()
main = print $ fst $ maximumBy (\(x,y) (u,v) -> compare y v) $ map (\(x,y) -> (x, length y)) (zip [1..1000000] (map collatz [1..1000000]))
