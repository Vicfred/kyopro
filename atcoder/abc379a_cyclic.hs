-- vicfred
-- https://atcoder.jp/contests/abc379/tasks/abc379_a
-- implementation
shiftLeft n = (++) <$> drop n <*> take n
main :: IO ()
main = getLine >>= putStrLn . unwords . (\s -> [shiftLeft 1 s, shiftLeft 2 s])
