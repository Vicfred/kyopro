-- vicfred
-- https://atcoder.jp/contests/abc390/tasks/abc390_a
-- implementation
import Data.Bool

main :: IO ()
main = getLine >>= putStrLn .bool "No" "Yes"
                            .f
                            .map read
                            .words

f :: [Int] -> Bool
f [1,2,3,5,4] = True
f [1,2,4,3,5] = True
f [1,3,2,4,5] = True
f [2,1,3,4,5] = True
f _ = False
