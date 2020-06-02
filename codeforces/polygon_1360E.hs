import Control.Monad ( replicateM_ )

readInput = do
    n <- read <$> getLine
    sequenceA $ replicate n (map (=='1') <$> getLine)

polygon :: [[Bool]] -> String
polygon m =
    let a = map tail m
        b = tail m
        zipped = zipWith3 zip3 m a b
    in
        if any (any invalid) zipped
            then "NO"
            else "YES"
    where invalid (t, u, v) = t && not u && not v

main = do
    t <- read <$> getLine
    replicateM_ t (polygon <$> readInput >>= putStrLn)

