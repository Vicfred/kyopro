--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/C

import           Control.Monad ( replicateM_ )
import qualified Data.Set as Set


similarPairs :: [Int] -> String
similarPairs s = let odds = length (filter odd s) in
    if even odds || any (seen . succ) s
        then "YES"
        else "NO"
    where seen = (`Set.member` Set.fromList s)


readInput :: IO [Int]
readInput = getLine >> map read . words <$> getLine

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (similarPairs <$> readInput >>= putStrLn)
