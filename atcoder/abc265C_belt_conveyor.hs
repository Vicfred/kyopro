-- uninhm
-- https://atcoder.jp/contests/abc265/tasks/abc265_c
-- implementation

import qualified Data.Map as M

import Control.Monad (replicateM)

type Pos = (Int, Int)
type Grid a = M.Map Pos a

getInts :: IO [Int]
getInts = map read . words <$> getLine

createMap :: [[a]] -> Grid a
createMap grid = M.fromList $ concat $ zipWith f [1..] grid
 where
  f i line = zipWith (g i) [1..] line
  g i j elem = ((i, j), elem)

nextPos :: Char -> Pos -> Pos
nextPos 'U' (i, j) = (i-1, j)
nextPos 'D' (i, j) = (i+1, j)
nextPos 'L' (i, j) = (i, j-1)
nextPos 'R' (i, j) = (i, j+1)

isValid :: Int -> Int -> Pos -> Bool
isValid h w (i, j) = 1 <= i && i <= h && 1 <= j && j <= w

solve :: Int -> Int -> Grid Char -> Pos -> Maybe Pos
solve h w grid pos
  | not $ isValid h w $ pos' = Just pos
  | M.member pos' grid         = solve h w grid' pos'
  | otherwise                = Nothing
  where pos' = nextPos dir pos
        dir  = grid M.! pos
        grid' = M.delete pos grid

main :: IO ()
main = do
  [h, w] <- getInts
  grid <- createMap <$> replicateM h getLine
  putStrLn $ case solve h w grid (1, 1) of
    Just (i, j) -> show i ++ " " ++ show j
    Nothing     -> "-1"
