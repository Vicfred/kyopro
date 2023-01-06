-- uninhm
-- https://adventofcode.com/2022/day/9#part2
-- implementation, set

import Data.Set (Set)
import qualified Data.Set as Set

data Direction = DRight | DLeft | DUp | DDown
  deriving (Show)

data Move = Move Direction Int
  deriving (Show)

data Status = Status
  { knots :: [(Int, Int)]
  , visited :: Set (Int, Int)
  }

initialStatus :: Status
initialStatus = Status (replicate 10 (0, 0)) $ Set.singleton (0, 0)

parse :: String -> [Move]
parse = map parseMove . lines where
  parseMove ln = case words ln of
    ["R", n] -> Move DRight (read n)
    ["L", n] -> Move DLeft (read n)
    ["U", n] -> Move DUp (read n)
    ["D", n] -> Move DDown (read n)

updateKnot :: (Int, Int) -> (Int, Int) -> (Int, Int)
updateKnot (hx, hy) (tx, ty)
  | hx == tx && abs dy > 1 = (tx, ty + my)
  | hy == ty && abs dx > 1 = (tx + mx, ty)
  | hx /= tx && hy /= ty && (abs dy > 1 || abs dx > 1) =
      (tx + mx, ty + my)
  | otherwise = (tx, ty)
    where dx = hx - tx
          mx = dx `div` abs dx
          dy = hy - ty
          my = dy `div` abs dy

updateKnots :: Status -> Status
updateKnots (Status [t] v) = Status [t] $ Set.insert t v
updateKnots s@(Status (h:t:xs) v) = s
  { knots = h : t' : tail (knots s')
  , visited = visited s'
  } where s' = updateKnots $ Status (t' : xs) v
          t' = updateKnot h t

doMove :: Move -> Status -> Status
doMove (Move _ 0) status = status
doMove (Move dir n) status =
    doMove (Move dir (n - 1))
  . updateKnots
  . flip Status (visited status)
  . moved dir
  $ knots status
    where moved DUp    k = (hx, hy + 1) : tail k
          moved DDown  k = (hx, hy - 1) : tail k
          moved DRight k = (hx + 1, hy) : tail k
          moved DLeft  k = (hx - 1, hy) : tail k
          ((hx, hy):_) = knots status

solve :: [Move] -> Int
solve moves =
    Set.size
  . visited
  . foldr1 (flip (.)) (map doMove moves)
  $ initialStatus

main :: IO ()
main = print . solve . parse =<< readFile "input"
