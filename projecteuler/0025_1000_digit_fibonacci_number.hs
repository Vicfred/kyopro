-- vicfred
-- https://projecteuler.net/problem=25
-- fibonacci
import Data.Array

fib' :: Int -> Integer
fib' n = fibs !! n
  where fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

memoized_fib :: Int -> Integer
memoized_fib = (map fibs [0 ..] !!)
   where fibs 0 = 0
         fibs 1 = 1
         fibs n = memoized_fib (n - 2) + memoized_fib (n - 1)

fib'' :: Int -> Integer
fib'' max = go max
  where go 0 = 0
        go 1 = 1
        go n = fibs ! (n - 1) + fibs ! (n - 2)
        fibs = listArray (0, max) [go x | x <- [0..max]]

main :: IO ()
main = print . (+1) . length $ takeWhile ((< 1000) . length) (map (show . fib') [1..])
