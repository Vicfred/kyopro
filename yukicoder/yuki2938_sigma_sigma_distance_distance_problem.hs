-- vicfred
-- https://yukicoder.me/problems/no/2938
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  as <- map read . words <$> getLine :: IO [Int]
  print . sum $ do
    i <- [1..n]
    j <- [1..n]
    return $ abs(i - j) * abs(as !! (i - 1) - as !! (j - 1))
