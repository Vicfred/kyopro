-- vicfred
-- https://atcoder.jp/contests/abc375/tasks/abc375_a
-- implementation
main :: IO ()
main = do
  readLn @Int
  s <- getLine
  print . count $ zipWith3 pattern s (tail s) (drop 2 s)
    where
      pattern '#' '.' '#' = True
      pattern _ _ _ = False
      count = length . filter id
