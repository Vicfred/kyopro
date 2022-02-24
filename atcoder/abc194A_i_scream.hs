-- uninhm
-- https://atcoder.jp/contests/abc194/tasks/abc194_a
-- implementation

getInts :: IO [Int]
getInts = map read . words <$> getLine

iceCreamType :: Int -> Int -> Int
iceCreamType pms pmf
  | pms >= 15 && pmf >= 8 = 1
  | pms >= 10 && pmf >= 3 = 2
  | pms >= 3              = 3
  | otherwise             = 4

main :: IO ()
main = do
  [a, b] <- getInts
  print $ iceCreamType (a + b) b
