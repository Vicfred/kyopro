-- vicfred
-- https://atcoder.jp/contests/abc353/tasks/abc353_a
-- implementation
import Data.List

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  h <- map read . words <$> getLine :: IO [Int]
  let building = head h
  let maybeBuilding = findIndex (> building) h
  print $ findBuilding maybeBuilding

findBuilding :: Maybe Int -> Int
findBuilding Nothing = -1
findBuilding (Just x) = x + 1
