-- vicfred
-- https://atcoder.jp/contests/abc215/tasks/abc215_a
-- implementation
main :: IO ()
main = do
  s <- getLine
  if s == "Hello,World!" then
    putStrLn "AC"
  else
    putStrLn "WA"
