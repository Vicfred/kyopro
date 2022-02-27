-- uninhm
-- https://atcoder.jp/contests/abc196/tasks/abc196_b
-- implementation

main :: IO ()
main = getLine >>= putStrLn . takeWhile (/= '.')
