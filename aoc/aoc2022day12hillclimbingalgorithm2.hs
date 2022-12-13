-- uninhm
-- https://adventofcode.com/2022/day/12#part2
-- graph, dijkstra

import Data.Map (Map)
import qualified Data.Map as Map

import Data.Set (Set)
import qualified Data.Set as Set

import Data.Char (ord)
import Data.List (find)

data Status = Status
  { dim :: (Int, Int)
  , queue :: Set (Int, (Int, Int))
  , grid :: Map (Int, Int) Char
  , dists :: Map (Int, Int) Int
  , visited :: Set (Int, Int)
  }

infinity :: Int
infinity = (2 :: Int) ^ (30 :: Int)

parse :: String -> ((Int, Int), Map (Int, Int) Char)
parse input = ((length (head lns), length lns), m)
  where
    lns = lines input
    m = Map.fromList
      $ concat
      $ zipWith (\y ->
          zipWith (\x c ->
            ((x, y), c))
          [0..])
        [0..] lns

inDim :: (Int, Int) -> (Int, Int) -> Bool
inDim (w, h) (x, y) = 0 <= x && x < w && 0 <= y && y < h

canJumpTo :: Char -> Char -> Bool
canJumpTo x from = ord (f x) - ord (f from) <= 1
  where
    f 'S' = 'a'
    f 'E' = 'z'
    f c = c

maybeAdd :: (Int, (Int, Int)) -> (Int, Int) -> Status -> Status
maybeAdd (d, prev) cord s@(Status dim q g ds v)
  | inDim dim cord
 && canJumpTo (g Map.! cord) (g Map.! prev)
 && cord `Set.notMember` v
 && Map.findWithDefault infinity cord ds > d + 1 =
      s { queue = Set.insert (d+1, cord) q
        , dists = Map.insert cord (d+1) ds
        }
  | otherwise = s

step :: Status -> Status
step s@(Status _ q _ _ v) =
  maybeAdd e (x+1, y)
  $ maybeAdd e (x-1, y)
  $ maybeAdd e (x, y+1)
  $ maybeAdd e (x, y-1) s'
  where (e@(_, (x, y)), q') = Set.deleteFindMin q
        s' = s { queue = q'
               , visited = Set.insert (x, y) v
               }

findValue :: Eq v => v -> Map k v -> k
findValue x m = k
  where (Just (k, _)) = find ((== x) . snd) (Map.assocs m)

findValues :: Eq v => v -> Map k v -> [k]
findValues x m = map fst $ filter ((== x) . snd) (Map.assocs m)

solveFor :: ((Int, Int), Map (Int, Int) Char) -> (Int, Int) -> Int
solveFor (dim, grid) start = Map.findWithDefault infinity end $ dists lastStep
  where
    (Just lastStep) = find (Set.null . queue)
      $ iterate step
      $ Status dim (Set.singleton (0, start)) grid Map.empty Set.empty
    end = findValue 'E' grid

solve :: ((Int, Int), Map (Int, Int) Char) -> Int
solve input@(_, grid) = minimum $ map (solveFor input) $ findValues 'a' grid

main :: IO ()
main = print . solve . parse =<< readFile "input"
