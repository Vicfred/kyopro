-- vicfred
-- https://atcoder.jp/contests/abc372/tasks/abc372_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn <$> filter (/= '.')
