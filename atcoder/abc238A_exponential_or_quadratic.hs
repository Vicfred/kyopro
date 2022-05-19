-- uninhm
-- https://atcoder.jp/contests/abc238/tasks/abc238_a
-- implementation

solve :: Int -> String
solve n
  | 2 <= n && n <= 4 = "No"
  | otherwise        = "Yes"

main :: IO ()
main = getLine >>= putStrLn . solve . read
