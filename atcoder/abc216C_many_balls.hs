-- uninhm
-- https://atcoder.jp/contests/abc216/tasks/abc216_c
-- greedy

main :: IO ()
main = getLine >>= putStrLn . solve . read

solve :: Int -> String
solve 0 = ""
solve n
  | n `mod` 2 == 0 = solve (n `div` 2) ++ "B"
  | otherwise = solve (n - 1) ++ "A"
