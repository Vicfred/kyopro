-- uninhm
-- https://adventofcode.com/2022/day/6#part2
-- implementation, set

import qualified Data.Set as S

solve :: Int -> String -> Int
solve n s = go n (take n s) (drop n s)
  where
    go i lastN s | S.size (S.fromList lastN) == n = i
    go i (_:lastN') (x:s) = go (i+1) (lastN' ++ [x]) s

main :: IO ()
main = print . solve 14 =<< readFile "input"
