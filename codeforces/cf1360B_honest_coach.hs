--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/B
--- greedy, sorting

import Control.Monad ( replicateM_ )


honestCoach :: [Int] -> Int
honestCoach = minSeparation . quickSort


quickSort :: Ord a => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort a = quickSort l ++ pivot : quickSort r
    where l = filter (<=pivot) rest
          r = filter ( >pivot) rest
          (pivot : rest) = a


minSeparation :: (Ord a, Num a) => [a] -> a
minSeparation a = minimum $ zipWith subtract a (tail a)


readInput :: IO [Int]
readInput = getLine >> map read . words <$> getLine

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (honestCoach <$> readInput >>= print)
