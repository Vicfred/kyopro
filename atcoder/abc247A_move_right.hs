-- uninhm
-- https://atcoder.jp/contests/abc247/tasks/abc247_a
-- implementation, string manipulation

main :: IO ()
main = getLine >>= putStrLn . ('0':) . take 3
