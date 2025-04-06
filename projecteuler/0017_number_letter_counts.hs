-- vicfred
-- https://projecteuler.net/problem=17
-- implementation
import Data.Array

-- Arrays for number names
lessThanTwenty :: Array Int String
lessThanTwenty =
  listArray
    (0, 19)
    [ "",
      "one",
      "two",
      "three",
      "four",
      "five",
      "six",
      "seven",
      "eight",
      "nine",
      "ten",
      "eleven",
      "twelve",
      "thirteen",
      "fourteen",
      "fifteen",
      "sixteen",
      "seventeen", -- Fixed typo
      "eighteen",
      "nineteen"
    ]

tenths :: Array Int String
tenths =
  listArray
    (2, 9)
    [ "twenty",
      "thirty",
      "forty",
      "fifty",
      "sixty",
      "seventy",
      "eighty",
      "ninety"
    ]

-- Constants for repeated strings
hundred :: String
hundred = "hundred"

andWord :: String
andWord = "and"

thousand :: String
thousand = "thousand"

-- Calculate the length of numbers below 100
below100Length :: Int -> Int
below100Length n
  | n < 20 = length $ lessThanTwenty ! n
  | otherwise = length (tenths ! q) + if r == 0 then 0 else length (lessThanTwenty ! r)
  where
    (q, r) = n `divMod` 10

-- Calculate the length of numbers below 1000
below1000Length :: Int -> Int
below1000Length n
  | n < 100 = below100Length n
  | otherwise = hundredLength + below100Length s
  where
    (h, s) = n `divMod` 100
    hundredLength
      | h == 0 = 0
      | s == 0 = length (lessThanTwenty ! h) + length hundred
      | otherwise = length (lessThanTwenty ! h) + length hundred + length andWord

-- Calculate the total length of numbers from 1 to 1000
totalLength :: Int
totalLength =
  length "one"
    + length thousand
    + sum
      [ below1000Length n
        | n <- [1 .. 999]
      ]

main :: IO ()
main = print totalLength
