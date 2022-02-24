-- uninhm
-- https://atcoder.jp/contests/abc188/tasks/abc188_b
-- implementation

import Data.Bool (bool)

getInts :: IO [Int]
getInts = map read . words <$> getLine

innerProduct :: [Int] -> [Int] -> Int
innerProduct a b = sum $ zipWith (*) a b

main :: IO ()
main = do
  _ <- getLine
  a <- getInts
  b <- getInts

  putStrLn $ bool "No" "Yes" $ (== 0) $ innerProduct a b
