-- uninhm
-- https://atcoder.jp/contests/abc191/tasks/abc191_b
-- implementation

getInts :: IO [Int]
getInts = map read . words <$> getLine

main = do
  [_, x] <- getInts
  putStrLn . unwords . map show . filter (/= x) =<< getInts
