-- vicfred
-- https://atcoder.jp/contests/abc323/tasks/abc323_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn .bool "No" "Yes"
                            .all (== True)
                            .map f
                            .(zip [1..])

f :: (Int, Char) -> Bool
f (n, c)
  | even n && c =='1' = False
  | otherwise = True
