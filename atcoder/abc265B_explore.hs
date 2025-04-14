-- uninhm
-- https://atcoder.jp/contests/abc265/tasks/abc265_b
-- implementation

import qualified Data.Map as M

import Control.Monad (replicateM)
import Data.Bool (bool)

getInts :: IO [Int]
getInts = map read . words <$> getLine

solve :: Int -> [Int] -> M.Map Int Int -> Int -> Bool
solve t [] _ _ = t > 0
solve t (x:a) bonuses i
  | t <= 0 = False
  | otherwise = solve (t - x + bonus) a bonuses (i+1)
  where
    bonus = M.findWithDefault 0 i bonuses

main :: IO ()
main = do
  [n, m, t] <- getInts
  a <- getInts
  bonuses <- M.fromList . map (\[a,b] -> (a,b)) <$> replicateM m getInts
  putStrLn $ bool "No" "Yes" $ solve t a bonuses 1
