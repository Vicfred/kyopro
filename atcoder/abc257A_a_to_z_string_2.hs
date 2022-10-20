-- uninhm
-- https://atcoder.jp/contests/abc257/tasks/abc257_a
-- implementation

solve :: [Int] -> Char
solve [n, x] = cycle (concatMap (replicate n) ['A'..'Z']) !! (x - 1)
solve _ = error "Invalid input"

main :: IO ()
main = getLine >>= putStrLn . (:[]) . solve . map read . words
