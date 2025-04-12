import Data.List (transpose)
import Control.Monad (replicateM)
-- vicfred
-- https://atcoder.jp/contests/abc337/tasks/abc337_a
-- implementation
main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  [takahashi, aoki] <- transpose <$> replicateM n (map read . words <$> getLine) :: IO [[Int]]
  putStrLn $ whoWins takahashi aoki

whoWins :: [Int] -> [Int] -> String
whoWins x y
        | takahashi > aoki = "Takahashi"
        | takahashi < aoki = "Aoki"
        | otherwise = "Draw"
        where takahashi = sum x
              aoki      = sum y
