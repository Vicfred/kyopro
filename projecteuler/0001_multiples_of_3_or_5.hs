-- vicfred
-- https://projecteuler.net/problem=1
-- implementation
main :: IO ()
main = do
  print $ sum [x | x <- [0..1000-1], x `mod` 3 == 0 || x `mod` 5 == 0]
