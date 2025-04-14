-- vicfred
-- https://atcoder.jp/contests/abc315/tasks/abc315_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . filter (not . (`elem` "aeiou"))
