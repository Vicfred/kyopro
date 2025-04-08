-- vicfred
-- https://projecteuler.net/problem=30
-- implementation
import Data.Char (digitToInt)

main :: IO ()
main = print . sum $ [x | x <- [2..1000000], x == (sum . map ((^5) . digitToInt) . show) x]
