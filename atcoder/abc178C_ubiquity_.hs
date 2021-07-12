-- uninhm
-- https://atcoder.jp/contests/abc178/tasks/abc178_c
-- math, combinatorics

mmod = 10^9+7

binpow a b
  | b == 0    = 1
  | otherwise =
    if b `mod` 2 == 1 then
      res `mod` mmod * res `mod` mmod * a `mod` mmod
    else
      res `mod` mmod * res `mod` mmod
        where res = binpow a (b `div` 2)

solve n = (binpow 10 n) - ((*2) $ binpow 9 n) + (binpow 8 n)
normalize x = (x + mmod) `mod` mmod

main = interact $ show . normalize . solve . read
