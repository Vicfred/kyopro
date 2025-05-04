-- vicfred
-- https://atcoder.jp/contests/abc404/tasks/abc404_a
-- implementation
main :: IO ()
main = do
  s <- getLine
  let missing = [c | c <- ['a'..'z'], c `notElem` s]
  putStrLn $ [head missing]
