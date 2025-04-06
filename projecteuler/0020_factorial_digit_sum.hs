-- vicfred
-- https://projecteuler.net/problem=20
-- sum
import Data.Char (digitToInt)

factorial :: Integer -> Integer
factorial n = product [1..n]

main :: IO ()
main = print . sum . map digitToInt . show . factorial $ 100
