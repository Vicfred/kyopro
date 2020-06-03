--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/E
--- simulation, puzzle

import Control.Monad ( replicateM_ )


polygon :: [[Bool]] -> String
polygon grid =
    let right = map tail grid
        bottom = tail grid
        invalid = zipWith3_2d isValid grid right bottom
    in
        if any or invalid
            then "NO"
            else "YES"
    where
        zipWith3_2d = zipWith3 . zipWith3
        isValid t u v = t && not u && not v


readInput :: IO [[Bool]]
readInput = do
    n <- read <$> getLine
    sequence $ replicate n (map (=='1') <$> getLine)

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (polygon <$> readInput >>= putStrLn)
