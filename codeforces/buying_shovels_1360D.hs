import Control.Monad ( replicateM_ )

readInput = (map read . words <$> getLine)

buyingShovels :: [Int] -> Int
buyingShovels [n, k] = head (cands' ++ cands'')
    where upper = ceiling.sqrt.fromIntegral $ n
          cands' = filter (\x -> n`mod`x==0 && n`div`x<=k) [1..upper]
          cands'' = [n`div`x | x<-[upper,upper-1..1], n`mod`x==0, x<=k]

main = do
    t <- read <$> getLine
    replicateM_ t (buyingShovels <$> readInput >>= print)

