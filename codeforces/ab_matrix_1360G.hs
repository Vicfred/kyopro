import Control.Monad ( replicateM_ )

readInput = map read . words <$> getLine

abMatrix :: [Int] -> [String]
abMatrix [n, m, a, b]
    | n * a /= m * b = ["NO"]
    | otherwise =
        "YES" : take n (iterate (offset m a) firstRow)
    where
        firstRow = replicate a '1' ++ replicate (m-a) '0'
        offset n k list = suf ++ pre where (pre, suf) = splitAt (n-k) list

main = do
    t <- read <$> getLine
    replicateM_ t (abMatrix <$> readInput >>= putStr.unlines)

