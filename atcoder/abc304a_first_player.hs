-- vicfred
-- https://atcoder.jp/contests/abc304/tasks/abc304_a
-- implementation
import Control.Monad (replicateM)
import Data.List (minimumBy, findIndex)
import Data.Ord (comparing)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  pairs <- replicateM n $ do
    [t, v] <- words <$> getLine
    return (t, read v :: Int)
  let minima = minimumBy (comparing snd) pairs
  let Just idx = findIndex (\(_, x) -> x == snd minima) pairs
  mapM_ putStrLn $ map fst $ drop idx pairs ++ take idx pairs
