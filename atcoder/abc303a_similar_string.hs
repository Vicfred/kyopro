import Data.Bool (bool)
-- vicfred
-- https://atcoder.jp/contests/abc303/tasks/abc303_a
-- implementation
main :: IO ()
main = do
  _ <- getLine
  s <- getLine
  t <- getLine
  putStrLn . bool "No" "Yes" . all id $ zipWith isSimilarChar s t

isSimilarChar :: Char -> Char -> Bool
isSimilarChar '1' 'l' = True
isSimilarChar 'l' '1' = True
isSimilarChar '0' 'o' = True
isSimilarChar 'o' '0' = True
isSimilarChar c d = c == d
