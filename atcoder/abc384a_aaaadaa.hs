-- vicfred
-- https://atcoder.jp/contests/abc384/tasks/abc384_a
-- implementation
main :: IO ()
main = do
  [_, [c1], [c2]] <- words <$> getLine
  s <- getLine
  putStrLn $ map (\x -> if x /= c1 then c2 else x) s
