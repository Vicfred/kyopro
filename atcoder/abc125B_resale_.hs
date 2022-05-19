-- uninhm
-- https://atcoder.jp/contests/abc125/tasks/abc125_b
-- greedy

getInts :: IO [Int]
getInts = map read . words <$> getLine

solve :: [Int] -> [Int] -> Int
solve v c = sum $ filter (> 0) $ zipWith (-) v c

main :: IO ()
main = getLine >> solve <$> getInts <*> getInts >>= print
