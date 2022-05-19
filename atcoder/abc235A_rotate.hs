-- uninhm
-- https://atcoder.jp/contests/abc235/tasks/abc235_a
-- implementation

solve :: [Int] -> Int
solve [a, b, c] = decnum a b c + decnum b c a + decnum c a b
  where decnum x y z = x * 100 + y * 10 + z

main :: IO ()
main = getLine >>= print . solve . map (read . (:[]))
