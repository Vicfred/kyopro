import Control.Monad ( replicateM_ )

readInput = getLine >> (map read . words <$> getLine)

honestCoach :: [Int] -> Int
honestCoach s = minDiff (quickSort s)

quickSort [] = []
quickSort [x] = [x]
quickSort a = quickSort l ++ pivot:quickSort r
    where l = filter (<=pivot) rest
          r = filter ( >pivot) rest
          (pivot:rest) = a

minDiff a = foldr min maxBound $ map (uncurry subtract) $ zip a (tail a)

main = do
    t <- read <$> getLine
    replicateM_ t (honestCoach <$> readInput >>= print)

