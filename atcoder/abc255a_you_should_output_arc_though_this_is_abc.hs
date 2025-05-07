-- vicfred
-- https://atcoder.jp/contests/abc255/tasks/abc255_a
-- implementation
import Control.Monad (replicateM)

main :: IO ()
main = do
  [r, c] <- map read . words <$> getLine :: IO [Int]
  ass <- replicateM 2 $ map read . words <$> getLine :: IO [[Int]]
  print $ ass !! (r-1) !! (c-1)
