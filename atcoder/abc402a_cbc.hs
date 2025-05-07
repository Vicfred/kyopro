-- vicfred
-- https://atcoder.jp/contests/abc402/tasks/abc402_a
-- implementation
main :: IO ()
main = do
  s <- getLine :: IO String
  let cbc = [c | c <- s, c `elem` ['A'..'Z']]
  putStrLn cbc
