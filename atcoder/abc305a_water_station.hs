-- vicfred
-- https://atcoder.jp/contests/abc305/tasks/abc305_a
-- implementation
import Data.List (minimumBy)
import Data.Ord (comparing)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  print $ minimumBy (comparing (\x -> abs (x - n))) [0,5..100]
