-- vicfred
-- https://atcoder.jp/contests/abc248/tasks/abc248_a
-- implementation
main :: IO ()
main = do
  s <- getLine :: IO String
  let missing = head [c | c <- "1234567890", c `notElem` s]
  putStrLn $ [missing]
