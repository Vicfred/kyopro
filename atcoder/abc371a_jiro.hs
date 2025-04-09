-- vicfred
-- https://atcoder.jp/contests/abc371/tasks/abc371_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . f

f :: String -> String
f "> < <" = "A"
f "< > >" = "A"
f "< < <" = "B"
f "> > >" = "B"
f _       = "C"
