import Control.Monad ( replicateM_ )

readInput = map read . words <$> getLine

minSquare :: [Int] -> Int
minSquare [w, h] = (max a (2*b)) ^ 2
    where a = max w h
          b = min w h

main = do
    x <- read <$> getLine
    replicateM_ x (minSquare <$> readInput >>= print)

