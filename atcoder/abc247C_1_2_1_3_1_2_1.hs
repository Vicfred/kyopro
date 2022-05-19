-- uninhm
-- https://atcoder.jp/contests/abc247/tasks/abc247_c
-- implementation, recursion

solve 1 = "1"
solve n = solve (n-1) ++ " " ++ show n ++ " " ++ solve (n-1)

main :: IO ()
main = getLine >>= putStrLn . solve . read
