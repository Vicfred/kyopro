-- uninhm
-- https://atcoder.jp/contests/abc200/tasks/abc200_a
-- implementation

main :: IO ()
main = getLine >>= print . getCentury . read

getCentury :: Int -> Int
getCentury year = (year + 99) `div` 100
