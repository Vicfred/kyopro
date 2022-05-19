-- uninhm
-- https://atcoder.jp/contests/abc250/tasks/abc250_a
-- implementation

getInts :: IO [Int]
getInts = map read . words <$> getLine

solve :: [Int] -> [Int] -> Int
solve [h, w] [r, c] = 4
  - f (r == 1)
  - f (c == 1)
  - f (r == h)
  - f (c == w)
    where f p = if p then 1 else 0

main :: IO ()
main = solve <$> getInts <*> getInts >>= print
