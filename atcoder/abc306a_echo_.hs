-- vicfred
-- https://atcoder.jp/contests/abc306/tasks/abc306_a
-- implementation
main :: IO ()
main = do
  _ <- getLine
  s <- getLine
  putStrLn $ foldr (\c acc -> c:c:acc) [] s
