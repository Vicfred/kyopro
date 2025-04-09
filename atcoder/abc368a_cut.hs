import Data.Char (intToDigit)
import Data.List (intersperse)
-- vicfred
-- https://atcoder.jp/contests/abc368/tasks/abc368_a
-- implementation
main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn . unwords . map show $ drop (n - k) a ++ take (n - k) a
