-- uninhm
-- https://adventofcode.com/2022/day/9
-- implementation, set

import Data.Set (Set)
import qualified Data.Set as Set

data Direction = DRight | DLeft | DUp | DDown
  deriving (Show)

data Move = Move Direction Int
  deriving (Show)

data Status = Status
  { headX :: Int
  , headY :: Int
  , tailX :: Int
  , tailY :: Int
  , visited :: Set (Int, Int)
  }

initialStatus :: Status
initialStatus = Status 0 0 0 0 $ Set.singleton (0, 0)

moveTailTo :: Int -> Int -> Status -> Status
moveTailTo x y s = s
  { tailX = x
  , tailY = y
  , visited = Set.insert (x, y) $ visited s
  }

parse :: String -> [Move]
parse = map parseMove . lines where
  parseMove ln = case words ln of
    ["R", n] -> Move DRight (read n)
    ["L", n] -> Move DLeft (read n)
    ["U", n] -> Move DUp (read n)
    ["D", n] -> Move DDown (read n)

updateTail :: Status -> Status
updateTail s@(Status hx hy tx ty visited)
  | hx == tx && abs dy > 1 = moveTailTo tx (ty + my) s
  | hy == ty && abs dx > 1 = moveTailTo (tx + mx) ty s
  | hx /= tx && hy /= ty && (abs dy > 1 || abs dx > 1) =
      moveTailTo (tx + mx) (ty + my) s
  | otherwise = s
    where dx = hx - tx
          mx = dx `div` abs dx
          dy = hy - ty
          my = dy `div` abs dy

doMove :: Move -> Status -> Status
doMove (Move _ 0) status = status
doMove (Move dir n) status =
  doMove (Move dir (n - 1)) $ updateTail $ moved dir status
    where moved DUp    s = s { headY = headY s + 1 }
          moved DDown  s = s { headY = headY s - 1 }
          moved DRight s = s { headX = headX s + 1 }
          moved DLeft  s = s { headX = headX s - 1 }

solve :: [Move] -> Int
solve moves = id
  . Set.size
  . visited
  . foldr1 (flip (.)) (map doMove moves)
  $ initialStatus

main :: IO ()
main = print . solve . parse =<< readFile "input"
