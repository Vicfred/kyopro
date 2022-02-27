-- uninhm
-- https://atcoder.jp/contests/abc201/tasks/abc201_b
-- implementation

import Control.Monad (replicateM)
import Data.List (sort)

parseMountain :: [String] -> (Int, String)
parseMountain [name, height] = (read height, name)

main :: IO ()
main = do
  n <- read <$> getLine
  mountains <- replicateM n $ fmap (parseMountain . words) getLine

  putStrLn $ snd $ (!! 1) $ reverse $ sort mountains
