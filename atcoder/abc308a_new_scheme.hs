import Data.Bool (bool)
-- vicfred
-- https://atcoder.jp/contests/abc308/tasks/abc308_a
-- implementation
main :: IO ()
main = do
  s <- map read . words <$> getLine :: IO [Int]
  putStrLn . bool "No" "Yes" $ isMultiple s && isInRange s && isNonDecreasing s

isNonDecreasing :: [Int] -> Bool
isNonDecreasing xs = all id $ zipWith (<=) xs (tail xs)

isInRange :: [Int] -> Bool
isInRange xs = all ((&&) <$> (>= 100) <*> (<= 675)) xs

isMultiple :: [Int] -> Bool
isMultiple xs = all ((==0) . (`mod` 25)) xs
