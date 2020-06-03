--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/F

{-# LANGUAGE TupleSections #-}
import Control.Monad ( replicateM_ )


spyString :: Int -> [String] -> String
spyString m [] = replicate m '0'
spyString m (leader : members) =
    case filter isSpy candidates of
        (spy : _) -> spy
        _         -> "-1"
    where
        isSpy cand = all ((2 >) . hammingDistance cand) members
        candidates = gen `concatMap` map (`splitAt` leader) [0..m-1]
        gen (l, r) = ((l ++) . (: tail r)) `map` ['a'..'z']


hammingDistance :: String -> String -> Int
hammingDistance a b = sum $ zipWith ((fromEnum.) . (/=)) a b


readInput :: IO (Int, [String])
readInput = do
    [n, m] <- map read . words <$> getLine
    (m, ) <$> (sequence $ replicate n getLine)

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (uncurry spyString <$> readInput >>= putStrLn)
