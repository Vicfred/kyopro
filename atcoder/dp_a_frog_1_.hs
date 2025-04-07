-- vicfred
-- https://atcoder.jp/contests/dp/tasks/dp_a
-- dynamic programming
oneDiff :: [Int] -> [Int]
oneDiff h = [abs (i - j) | (i, j) <- zip (tail h) h]

twoDiff :: [Int] -> [Int]
twoDiff h = [abs (i - j) | (i, j) <- zip (tail (tail h)) h]

frog :: [Int] -> [Int]
frog h = dp
  where
    od = oneDiff h
    td = twoDiff h
    dp = 0 : head od : [min (i + j) (k + l) | ((i, j), (k, l)) <- zip (tail $ zip dp od) (zip dp td)]

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  h <- map read . words <$> getLine :: IO [Int]
  print . last $ frog h
