-- vicfred
-- https://atcoder.jp/contests/abc307/tasks/abc307_a
-- implementation
main :: IO ()
main = do
  _ <- getLine
  as <- map read . words <$> getLine :: IO [Int]
  putStrLn . unwords . map show $ f as

f :: [Int] -> [Int]
f [] = []
f xs = sum (take 7 xs) : f (drop 7 xs)
