-- vicfred
-- https://atcoder.jp/contests/abc383/tasks/abc383_a
-- implementation
import Control.Monad (replicateM)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  pairs <- replicateM n $ (\[t, v] -> (t, v)) <$> (map read . words <$> getLine :: IO [Int])
  putStrLn $ show . snd $ foldl (\(x,y) (u, v) -> if u - x > y then (u, v) else (u, y + v -u + x)) (0,0) pairs
