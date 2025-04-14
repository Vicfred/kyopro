-- vicfred
-- https://atcoder.jp/contests/abc313/tasks/abc313_a
-- implementation
main :: IO ()
main = do
  _ <- getLine
  (p:ps) <- map read . words <$> getLine :: IO [Int]
  let maxima = maximum $ ps ++ [0]
  if maxima >= p then
    print $ maxima - p + 1
  else
    print 0
