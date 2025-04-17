-- vicfred
-- https://atcoder.jp/contests/abc139/tasks/abc139_a
-- implementation

main :: IO ()
main = do
    s <- getLine
    t <- getLine
    print $ foldl (\ count idx -> count + if s !! idx == t !! idx then 1 else 0) 0 [0..2]

