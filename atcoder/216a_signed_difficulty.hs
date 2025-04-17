-- vicfred
-- https://atcoder.jp/contests/abc216/tasks/abc216_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . f

f :: String -> String
f [a, b, c] = [a] ++ sign c
f [a, b, c, d] = [a, b] ++ sign d

sign :: Char -> String
sign c
  | c <= '2' = "-"
  | c >= '7' = "+"
  | otherwise = ""
