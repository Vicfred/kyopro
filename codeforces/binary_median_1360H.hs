{-# LANGUAGE TupleSections #-}
import           Control.Monad ( replicateM_ )
import           Data.List     ( foldl' )
import qualified Data.Set as Set


readInput = do
    [n, m] <- map read . words <$> getLine
    (m, ) <$> (sequence $ replicate n getLine)


binaryMedian :: (Int, [String]) -> String
binaryMedian (m, _remove) = toBinary m median
    where
        (_, median, _) = foldl' go (False, 2^(m-1) - 1, Set.empty) remove
        remove = map (fromBinary m) _remove

        go (isOdd, med, seen) rem =
            let isOdd' = not isOdd
                seen' = Set.insert rem seen
                find = get med seen
                med' =
                    if  not isOdd && rem <= med then find succ
                    else if isOdd && rem >= med then find pred
                    else med
            in (isOdd', med', seen')

        get n seen f = let n' = f n in
            if Set.member n' seen
                then get n' seen f
                else n'


fromBit '0' = 0
fromBit '1' = 1

toBit 0 = '0'
toBit 1 = '1'

fromBinary m = foldl' (\n c -> 2 * n + fromBit c) 0

toBinary m num =
    foldl' (\b k -> toBit (k `mod` 2):b) "" (take m $ iterate (`div` 2) num)


main = do
    t <- read <$> getLine
    replicateM_ t (binaryMedian <$> readInput >>= putStrLn)

