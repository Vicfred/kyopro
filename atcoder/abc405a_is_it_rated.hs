-- uninhm
-- https://atcoder.jp/contests/abc405/tasks/abc405_a
-- implementation

getInts :: IO [Int]
getInts = map read . words <$> getLine

solve :: Int -> Int -> String
solve 1 r
  | 1600 <= r && r <= 2999 = "Yes"
  | otherwise              = "No"
solve 2 r
  | 1200 <= r && r <= 2399 = "Yes"
  | otherwise              = "No"

main :: IO ()
main = do
  [r, x] <- getInts
  putStrLn $ solve x r
