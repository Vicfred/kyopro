-- vicfred
-- https://projecteuler.net/problem=29
-- implementation
import Data.List

main :: IO ()
main = print .length . nub $ [a^b | a <- [2..100], b <- [2..100]]
