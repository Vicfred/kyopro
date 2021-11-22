-- uninhm
-- https://atcoder.jp/contests/abc213/tasks/abc213_a
-- implementation

import Data.Bits (xor)

listify f [a, b] = f a b

main = interact $ show . listify xor . map (read :: String -> Int) . words
