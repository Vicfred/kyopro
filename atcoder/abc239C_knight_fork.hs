-- uninhm
-- https://atcoder.jp/contests/abc239/tasks/abc239_c
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

import Data.Bool (bool)

knightStepsAround :: (Int, Int) -> [(Int, Int)]
knightStepsAround (x, y) =
  [(x + x', y + y') | x' <- nums, y' <- nums, abs x' /= abs y']
    where nums = [-2, -1, 1, 2]

main :: IO ()
main = do
  [x1, y1, x2, y2] <- map read . words <$> getLine
  let f = S.fromAscList . knightStepsAround
      s1 = f (x1, y1)
      s2 = f (x2, y2)

  putStrLn $ bool "No" "Yes" $ S.size (s1 `S.intersection` s2) > 0
