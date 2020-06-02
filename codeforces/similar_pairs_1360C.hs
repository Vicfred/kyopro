import Control.Monad ( replicateM_ )
import qualified Data.Set as Set

readInput = getLine >> (map read . words <$> getLine)

similarPairs :: [Int] -> String
similarPairs s = let odds = length (filter odd s) in
    if even odds || any (flip Set.member set . succ) s
        then "YES"
        else "NO"
    where set = Set.fromList s

main = do
    t <- read <$> getLine
    replicateM_ t (similarPairs <$> readInput >>= putStrLn)

