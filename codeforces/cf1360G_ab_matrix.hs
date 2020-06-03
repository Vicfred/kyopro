--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/G

import Control.Monad ( replicateM_ )


abMatrix :: [Int] -> [String]
abMatrix [n, m, a, b]
    | n * a /= m * b = ["NO"]
    | otherwise =
        "YES" : take n (iterate (rotate a) firstRow)
    where
        firstRow = replicate a '1' ++ replicate (m-a) '0'
        rotate = drop <> take


readInput :: IO [Int]
readInput = map read . words <$> getLine

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (abMatrix <$> readInput >>= putStr.unlines)
