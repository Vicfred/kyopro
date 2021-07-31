-- uninhm
-- https://atcoder.jp/contests/abc212/tasks/abc212_b
-- implementation

import Data.Bool (bool)

following n = (n+1) `mod` 10

isWeak li =
  and (zipWith (==) (init li) (tail li)) || and (zipWith f (init li) (tail li))
    where f a b = b == following a

main = getLine >>= putStrLn . bool "Strong" "Weak" . isWeak . map (read . pure)
